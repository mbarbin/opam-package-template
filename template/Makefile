.PHONY: all test fmt lint deps clean check-all

all:
	opam exec -- dune build

test:
	opam exec -- dune runtest

fmt:
	opam exec -- dune build @fmt --auto-promote

lint:
	opam lint
	opam exec -- opam-dune-lint

deps:
	opam install . --deps-only --with-doc --with-test

clean:
	opam exec -- dune clean

check-all: deps all test clean lint # fmt ## currently fmt is broken
