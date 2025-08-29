#!/bin/bash

pandoc --lua-filter scripts/variables.lua input.md -o README.md