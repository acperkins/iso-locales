# ISO 8601 locales for Linux

I like the [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date format, but none of the main
English locales fully support it. This repo patches some of them to use that format.

The keys I'm changing are as follows:

    d_t_fmt       "%FT%T%z"
    d_fmt         "%F"
    t_fmt         "%T"
    am_pm         "";""
    t_fmt_ampm    ""
    week          7;19971130;4
    first_weekday 2

The format commands `%F`, `%T`, and `%z` come from [strftime(3)](http://man.openbsd.org/strftime.3).

## Requirements

The following packages are required to build these locales.

### Fedora Linux

    sudo dnf install glibc-locale-source

## Building

Running `sudo make install` will install the files into the appropriate places in your filesystem.

Feel free to check the [Makefile](Makefile) to ensure it is not doing anything unexpected.

Note that this will overwrite your operating system's locale files. Updates to **glibc** or
associated packages may revert these changes. If that happens, simply run `sudo make install` again.
