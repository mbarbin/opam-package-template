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

Currently this template does not handle renaming the string
`my-package` into your actual package name in all the files, this
needs to be done manually.

```bash
# rename opam file, edit description, links, etc.
# replace occurrences of my-package by your package name
# edit files ...
```

### Sanity checks

You can check the validity of your opam file:

```bash
opam lint
```

You can test the various targets of the Makefile:

```bash
make all
make test
make fmt
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
