# opam package template

![example workflow](https://github.com/mbarbin/opam-package-template/actions/workflows/main.yml/badge.svg)

This is a project template for creating a new opam package repository. It lives at https://github.com/mbarbin/opam-package-template.

## Motivation

The goal of this template is to:

- speed up the initialization step when setting up a repo for a new opam package;
- centralize and share good/recent practices regarding packages environment and tooling.

## What's included

The templates enables:

- build, tests, opam/dune integration
- ocamlformat
- basic Makefile
- linting (opam and opam-dune-lint)
- github actions for basic continuous integration

## Using the template

To create a new project based on this template, choose between the options below:

### From the GitHub UI

Look for a green button `Use this template` next to the `Code` button on the main page of the repository.

See [creating-a-repository-from-a-template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template) for details.

### From the command line

Using the tool [degit](https://github.com/Rich-Harris/degit):

```bash
npx degit mbarbin/opam-package-template my-package
cd my-package
```

*Note that you will need to have [Node.js](https://nodejs.org) installed.*

This options merely creates the contents of the repository on your machine.

## Get started

```bash
cd my-package
```

### Edit script/find-and-replace.sh

There is a script to handle the renaming of a few variable that will
depend on your project name and setting.

This script is located at `./script/find-and-replace.sh`.

Open it with your editor, look for the editable section, and set the
variables below to the actual desired values:

```
package_public_name='my-package-name'
package_lib_name='my_package_name'
username='Fistname Lastname'
github_username='my-githubusername'
```

Save the file, then execute it from the root of the repo:

```bash
./script/find-and-replace.sh
```

### Synopsis, description and Lisence

- Edit the opam synopsis and description for your project;
- Choose and appropriate License for your project.

### Sanity checks

You can check the validity of your opam file:

```bash
opam lint
```

Test the various targets of the Makefile:

```bash
make all
make test
make fmt
make lint
make clean
```

Make sure to commit everything, then you may check that the
installation works as intended:

```bash
opam pin .
opam install .
```

More generally, refer to [opam packaging
documentation](https://opam.ocaml.org/doc/Packaging.html).

This should be enough to get going from there.

## Acknowledgements

- This template was inspired by https://github.com/sveltejs/template.
- The github workflow was created from examples found at https://github.com/ocaml/setup-ocaml.
