# uncrustify-builder

Helper Dockerfile to build an[uncrustify](https://github.com/uncrustify/uncrustify) binary.

## How to use

This is supposed to be used in other Ubuntu based Dockerfiles:

    COPY --from=ghcr.io/kaspar030/uncrustify-builder:latest /usr/bin/uncrustify /usr/bin/uncrustify

This repository will automatically build and publish ghcr.io/kaspar030/uncrustify-builder:latest.
