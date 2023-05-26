from generate_file import create_file
from utils import underscore_to_class_name

# format the template string with the values of the arguments
def create_repository_impl(feature_name: str, dir: str):
    classname = underscore_to_class_name(feature_name)
    filename = f"{dir}/{feature_name}_repository_impl.dart"

    content = f"""
import 'package:insurance_app/features/{feature_name}/domain/repositories/{feature_name}_repository.dart';
import 'package:insurance_app/src/data/repositories/base_repository.dart';

part '{feature_name}_repository.mapping.dart';

class {classname}RepositoryImpl extends BaseRepository implements {classname}Repository {{
  
}}
"""


    return create_file(filename , content)


# format the template string with the values of the arguments
def create_repository_interface(feature_name: str, dir: str):
    classname = underscore_to_class_name(feature_name)
    filename = f"{dir}/{feature_name}_repository.dart"

    content = f"""
abstract class {classname}Repository {{
  
}}
"""
    
    return create_file(filename , content)