import os
import subprocess
import argparse
import yaml


def clone_if_not_exists(repo, path):
    abspath = os.path.expanduser(path)
    if not os.path.isdir(abspath):
        output = subprocess.check_output(['git', 'clone', repo, path])
        print(output)


def update(repo, path):
    abspath = os.path.expanduser(path)
    os.chdir(abspath)
    output = subprocess.check_output(['git', 'fetch'])
    print(output)
    output = subprocess.check_output(['git', 'pull'])
    print(output)


def initialize_plugin(init_script):
    output = subprocess.check_output(init_script, shell=True)
    print(output)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("mode", help="init/update")
    parser.add_argument("pluginsFile", help="path to plugins.yml")
    args = parser.parse_args()
    with open(args.pluginsFile, 'r') as plugins_file:
        plugins = yaml.load(plugins_file.read())
    if args.mode.lower() == "init":
        executor = clone_if_not_exists
    else:
        executor = update
    for plugin in plugins['plugins']:
        print("Processing: " + plugin['name'] + "\n")
        executor(plugin['repo'], plugin['path'])
        if plugin['init']:
            initialize_plugin(plugin['init'])


if __name__ == "__main__":
    main()
