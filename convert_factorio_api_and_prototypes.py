
from factorio_api_docs_to_lua import convert_factorio_api
from factorio_prototypes_to_lua import scrap_prototypes_definitions_and_types

# The version of Factorio to generate the Luanalysis files
# Note: prototypes definitions are always for the latest version in the Factorio wiki
version = "latest"  # either 'latest' or a version string such as: '1.1.50'

# If we should save and reuse the json file instead of re-downloading it every time (it is not small: ~2.5MB)
reuse_cached_json_file = False

convert_factorio_api(version, not reuse_cached_json_file)
scrap_prototypes_definitions_and_types()
