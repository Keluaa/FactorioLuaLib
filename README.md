
# Automatic Generation of Luanalysis Definitions for Factorio


[Luanalysis](https://github.com/Benjamin-Dobell/IntelliJ-Luanalysis) is an excellent Lua plugin for IntelliJ IDEA.

By using the [machine-readable format](https://lua-api.factorio.com/latest/json-docs.html) of Factorio's API, 
as well as by scrapping the wiki for all [prototype definitions](https://wiki.factorio.com/Prototype_overview),
it is possible to generate Lua files for Luanalysis which correctly describes the full Lua API of Factorio.

This allows to quickly access the docs from your code, see attributes of a class and most importantly, check for errors 
and type-checking everything.

Since those files are automatically generated, it is possible that there are some errors, or that updates break some 
patterns. In the future, it [seems the devs planned](https://factorio.com/blog/post/fff-368) to have a machine-readable 
version of the prototypes of the wiki, which would make the whole conversion process much easier and reliable.

For completeness, some definitions are generated independently of the docs, and so there is a lot of custom additions on
top of the handling of the edge cases.
Most types and enums used by Factorio referenced in the docs should be present in the generated files, allowing to add 
type hints to (almost) all variables and parameters.

Some rare complex types have a simplified definition, like [TipTrigger](https://wiki.factorio.com/Types/TipTrigger), since
they would require a lot of manual work, which I don't think would be very useful. 


## Using the API definition files in a project

Whatever is the structure of your mod or script:
 - Clone/download this repository in a folder of your choice
 - In your IntelliJ IDEA project, open the modules settings: `File | Project Structure | Modules`
 - Add an imported module: `+ Add | Import Module` 
 - select the `FactorioLuaLib.iml` this repository

The current API version of the pre-generated files is 1.1.55. 

[//]: # (TODO: remember to update this version number at each re-generation)

See [KeMOS-Computers](https://github.com/Keluaa/KeMOS-Computers), the mod which made me create this, for an example of 
usage of those definitions.


## Generating the files for the latest version of the API

 - Clone this repository, and run `pip install -r requirements.txt` to make sure you have all the required Python libraries
 - Remove the all the files of the `lib` folder
 - Run `python ./convert_factorio_api_and_prototypes.py`
 - The `lib` folder contains the generated Lua files

To create the files for a specific version of the API, change the `version` variable in `convert_factorio_api_and_prototypes.py`
to the version string you want (e.g. `1.1.50`).

Note: the files in `lib/prototypes` depends on the wiki pages, which doesn't have a version selector. 
Those files are always for the latest version of Factorio.
