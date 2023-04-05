#!/bin/bash

set -xe

rm -rf example
SPIN_PROJECT_NAME=example spin new . example --default
