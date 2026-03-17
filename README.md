# opam package template

:warning: This repository is now a public archive. I have stopped developing the project and will no longer be maintaining it.

This project served me well from 2021 to 2025, and I am grateful to the authors and maintainers of the open-source libraries I was able to build upon and learn from here.

For related work with a more modern take, see also [this issue](https://github.com/ocaml/dune/issues/12100), and keep an eye on `dune init`!

Happy templating and thank you!

---

[![Actions Status](https://github.com/mbarbin/opam-package-template/workflows/ci/badge.svg)](https://github.com/mbarbin/opam-package-template/actions)

This is a project template for creating a new opam package repository.

## Using the template

```bash
opam spin new https://github.com/mbarbin/opam-package-template.git my-package
cd my-package
```

You can see an example of generated project in the [`example/`](example/) directory.

In order to see the template's github actions workflows being
executed, the example generated project is also hosted as a separate
repo [here](https://github.com/mbarbin/opam-package-template-example).

## Motivation and relationship to spin's default templates

This template is meant for personal use only. If you landed on this
page and are looking for an OCaml project template, I recommend having
a look at:

- the defaults templates provided by [spin](https://github.com/tmattio/spin)
- and more at https://github.com/ocaml-templates

I expect this template to be very close to spin's bin template,
although they may differ by small details. I use this repo rather than
spin's default to:

- learn about modern practices regarding OCaml packages tooling
- learn how to write a spin template

## What's included

The template enables:

- [X] opam/dune build
- [X] ocamlformat
- [X] basic Makefile
- [X] janestreet style [expect tests](https://github.com/janestreet/ppx_expect)
- [X] linting (opam and opam-dune-lint)
- [X] github actions for basic continuous integration
  - [X] allows for janestreet-bleeding opam repositories dependency

## Sanity checks

After creating the project directory, you can:

- [ ] Edit the long opam description

- [ ] Choose an appropriate License

- [ ] Check the validity of the opam file:
```bash
opam lint
```

- [ ] Test the various targets of the Makefile:
```bash
make all
make test
make fmt
make lint
make clean
```

- [ ] Check that the installation works as intended:
```bash
opam pin .
opam install .
```

More generally, refer to [opam packaging documentation](https://opam.ocaml.org/doc/Packaging.html).

## Acknowledgements

- This template is very close to (and heavily inspired by) [spin's bin template](https://github.com/tmattio/spin/tree/main/template/bin).
- `example.sh` and the CI script of the root repo is based on [spin-dream](https://github.com/ocaml-templates/spin-dream).
- The github workflow of the template was created from examples found at [ocaml/setup-ocaml](https://github.com/ocaml/setup-ocaml).
