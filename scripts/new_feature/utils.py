def underscore_to_class_name(string: str) -> str:
    """
    Converts a string in underscore style to camelCase.
    """
    words = string.split('_')
    camel_words = [word.capitalize() for word in words]
    camel_case = ''.join(camel_words)
    return camel_case

def underscore_to_field_name(string: str) -> str:
    """
    Converts a string in underscore style to camelCase with first
    """
    words = string.split('_')
    camel_words = [words[0]] + [word.capitalize() for word in words[1:]]
    camel_case = ''.join(camel_words)
    return camel_case

def lowercase_with_uppercase_first(string: str) -> str:
    """
    Converts a string to lowercase and capitalizes the first letter.
    """
    string = string.lower()
    string = string[0].upper() + string[1:]
    return string

