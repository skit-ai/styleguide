# Gofmt

Gofmt is a tool that automatically formats Go source code. It uses tabs for indentation and blanks for alignment. Alignment assumes that an editor is using a fixed-width font.

It is packaged as a part of the Go language.

To enforce correct formatting, one can make use of the pre-commit hook that is packaged here under the _/lint-configs/go/hooks_ folder.
To install the hook, it needs to be copied to the .git/hooks folder of the git project and given executable permissions.

To install the hook, please do the following:
* Download the _hooks_ folder to <basedir>/hooks
* Download _install_hook.sh_ to <basedir>/ (The base directory of your project).
* Run _install_hook.sh_ with superuser permissions.

*NOTE*: Superuser permissions are required to install the githook because the permission of the file are to be changed to make it executable.