
import textwrap
import re
from typing import *
from typing import TextIO


max_line_length = 120
desc_indent = 40
doc_start = "--- "
doc_continue = "\n--- "


html_reference_regex = re.compile(
    r"\[([a-zA-Z0-9_. ]+)]\(((?:[a-zA-Z0-9_.:&#]*/)+[a-zA-Z0-9_.&#]*|[a-zA-Z0-9_.&#]+.html)\)",
    re.MULTILINE
)
member_reference_regex = re.compile(r"\[([a-z-A-Z0-9_:]+)]\((\w+)::(\w+)\)", re.MULTILINE)
class_dot_reference_regex = re.compile(r"\[([a-zA-Z0-9_.]+)]\(([a-zA-Z0-9_.]+)\)", re.MULTILINE)


lua_key_words = [
    "and", "break", "do", "else", "elseif",
    "end", "false", "for", "function", "if",
    "in", "local", "nil", "not", "or",
    "repeat", "then", "true", "until", "while"
]


def check_var(name: str, class_var: str) -> str:
    if name in lua_key_words:
        name += '_'
    if name == class_var:
        name += '_'
    return name


def format_type(type_desc: Union[str, dict], array=False) -> str:
    if type(type_desc) is str:
        type_desc = type_desc.replace('.', '_')
        if array:
            return type_desc + "[]"
        return type_desc

    complex_type = type_desc["complex_type"]
    if complex_type == "variant":
        variant_str = " | ".join([format_type(sub_type) for sub_type in type_desc["options"]])
        if array:
            variant_str = "(" + variant_str + ")[]"
        return variant_str
    elif complex_type == "array":
        return format_type(type_desc["value"], array=True)
    elif complex_type == "dictionary":
        dict_str = "table<" + format_type(type_desc["key"]) + ", " + format_type(type_desc["value"]) + ">"
        if array:
            dict_str += "[]"
        return dict_str
    elif complex_type == "LuaCustomTable":
        dict_str = "LuaCustomTable<" + format_type(type_desc["key"]) + ", " + format_type(type_desc["value"]) + ">"
        if array:
            dict_str += "[]"
        return dict_str
    elif complex_type == "function":
        fun_str = "fun("
        for i, param in enumerate(type_desc["parameters"]):
            fun_str += f"_{i}: {format_type(param)}, "
        if len(type_desc["parameters"]) > 0:
            fun_str = fun_str[:-2]
        fun_str += ")"
        if array:
            fun_str += "[]"
        return fun_str
    elif complex_type == "LuaLazyLoadedValue":
        lazy_str = "LuaLazyLoadedValue<" + format_type(type_desc["value"]) + ">"
        if array:
            lazy_str += "[]"
        return lazy_str
    elif complex_type == "table":
        # Missing: description of all parameters of the table, if any
        if array:
            return "table[]"
        return "table"
    else:
        print("Unknown complex type: " + complex_type)
        return ""


def extract_references(string: str) -> Tuple[str, List[str]]:
    links = {}
    for i, ref in enumerate(reversed(list(html_reference_regex.finditer(string))), start=1):
        # I have no way to properly add links to the docs, so they are not included.
        # ref_link = string[ref.start(2):ref.end(2)]
        string = string[:ref.start()] + string[ref.start(1):ref.end(1)] + string[ref.end():]
        # links.append(doc_continue  + ref_link)

    for i, ref in enumerate(reversed(list(member_reference_regex.finditer(string))), start=1):
        ref_link = string[ref.start(2):ref.end(2)] + "#" + string[ref.start(3):ref.end(3)]
        string = string[:ref.start()] + string[ref.start(1):ref.end(1)] + string[ref.end():]
        links[ref_link] = True

    for i, ref in enumerate(reversed(list(class_dot_reference_regex.finditer(string))), start=1):
        ref_link = string[ref.start(2):ref.end(2)]
        if ref_link.count('.') > 1:
            last_dot_pos = ref_link.rfind('.')
            ref_link = ref_link[:last_dot_pos] + "#" + ref_link[last_dot_pos+1:]

        string = string[:ref.start()] + string[ref.start(1):ref.end(1)] + string[ref.end():]
        links[ref_link] = True

    # Eliminate duplicates and format the links
    # TODO : the '@' at the end is to fix a formatting issue with Luanalysis with @see
    links = [doc_continue + "@see " + link + " @" for link in links.keys()]

    return string, links


def format_description(desc: str) -> List[str]:
    # Replace references
    desc, links = extract_references(desc)

    raw_lines = desc.splitlines()

    lines = []
    for par_line in raw_lines:
        # Break the descriptions into lines
        par_lines = textwrap.wrap(par_line,
                                  width=max_line_length, break_long_words=False,
                                  initial_indent=doc_continue, subsequent_indent=doc_continue,
                                  expand_tabs=True, tabsize=4)
        lines.extend(par_lines)

    if len(lines) > 0:
        lines[0] = lines[0][1:]  # remove the first newline of the first line

    # Add references at the end
    if len(links) > 0:
        if len(lines) > 0:
            lines.append(doc_continue)
        lines.extend(links)

    return lines


def write_emmy_doc(file: TextIO, desc: str, type_str: Optional[str], class_name: Optional[str], is_struct=False):
    start = True
    if class_name is not None:
        if is_struct:
            file.write(doc_start + "@shape " + class_name)
        else:
            file.write(doc_start + "@class " + class_name)
        start = False

    if desc:
        if not start:
            file.write("\n")
        file.writelines(format_description(desc))

    if type_str is not None:
        file.write(doc_continue + "@type " + type_str + "\n")


def indent_for_desc(line: str) -> str:
    if len(line) < desc_indent + 1:
        line += " " * (desc_indent + 1 - len(line))
    return line
