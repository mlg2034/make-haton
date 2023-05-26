import logging
import os
import argparse

from templates.repository import create_repository_impl, create_repository_interface

def create_directory(path: str, exist_ok: bool = True) -> None:
    if os.path.isdir(path):
        print(f"\033[90m \U0001F4C1  Directory '{path}' already exists, skipping creation.\033[0m")
    else:
        os.makedirs(path, exist_ok=True)
        print(f"\033[32m \U0001F4C1  Directory '{path}' created.\033[0m")

def create_data_sources_directory(name: str) -> None:
    create_directory(f'./{name}/data/data_sources')


def create_repositories_directory(name: str) -> None:
    dir = f'./{name}/data/repositories'
    create_directory(dir)
    create_repository_impl(name, dir)


def create_entities_directory(name: str) -> None:
    create_directory(f'./{name}/domain/entities')


def create_domain_repositories_directory(name: str) -> None:
    dir = f'./{name}/domain/repositories'
    create_directory(dir)
    create_repository_interface(name, dir)


def create_use_cases_directory(name: str) -> None:
    create_directory(f'./{name}/domain/use_cases')


def create_managers_directory(name: str) -> None:
    create_directory(f'./{name}/presentation/managers')


def create_pages_directory(name: str) -> None:
    create_directory(f'./{name}/presentation/pages')


def create_view_models_directory(name: str) -> None:
    create_directory(f'./{name}/presentation/view_models')


def create_widgets_directory(name: str) -> None:
    create_directory(f'./{name}/presentation/widgets')


def create_feature_directories(feature_name: str, data_sources: bool = False) -> None:
    if data_sources:
        create_data_sources_directory(feature_name)
    create_repositories_directory(feature_name)
    create_entities_directory(feature_name)
    create_domain_repositories_directory(feature_name)
    create_use_cases_directory(feature_name)
    create_managers_directory(feature_name)
    create_pages_directory(feature_name)
    create_view_models_directory(feature_name)
    create_widgets_directory(feature_name)


if __name__ == '__main__':
    # create an ArgumentParser object
    parser = argparse.ArgumentParser(description='Create feature structure')

    # add named arguments
    parser.add_argument('--name', type=str, help='Feature name. Underscore style like `new_feature_name`')
    parser.add_argument('--data-sources', action='store_true', help='Create the data sources directory')

    # parse the arguments
    args = parser.parse_args()

    # check if name is provided
    if args.name is None:
        parser.print_help()
        exit(1)

    # call the function with the values of the arguments
    create_feature_directories(args.name, args.data_sources)

