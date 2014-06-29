web_grep
-------

Web grep is a grep for web pages.

Installation
============

```
gem install web_grep
```

Usage
=====

```
~ $ web_grep --help
Usage:
    web_grep WORD WEB_PAGE [OPTIONS]

Options
    -w, --word [word]                Searcheble word or RegExp
    -f, --file [file_path]           Search in file: "../index.html"
    -u, --url [url]                  Search in URL: "ya.ru"
    -q, --quite                      Show only xpaths
    -c, --count                      Show only count
    -x, --xpath                      Show xpaths to founded
    -s, --css                        Show css paths to founded
    -v, --version                    Show version
    -h, --help                       Show this help
```

```
~ $ web_grep Home https://www.yahoo.com -c
Found 33
```

Copyright
=========

Copyright (c) 2014 Vladislav Petrov.

See MIT-LICENSE.md for further details.