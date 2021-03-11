# uncrustify-builder

Helper Dockerfile to build a static [uncrustify](https://github.com/uncrustify/uncrustify) binary.

## How to use

    $ docker build -t uncrustify-builder .
    $ mkdir out
    $ docker run --rm -ti -v $(pwd)/out:/out -u $(id -u) uncrustify-builder

There should now be `./out/uncrustify`.
