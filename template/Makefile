.PHONY: all test fmt lint deps clean check-all

all:
	dune build

test:
	dune runtest

fmt:
	dune build @fmt --auto-promote

lint:
	opam lint
	opam-dune-lint

deps:
	opam install . --deps-only --with-doc --with-test

clean:
	dune clean

check-all: deps all test clean lint # fmt ## currently fmt is broken
