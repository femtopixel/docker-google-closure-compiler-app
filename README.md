![logo](logo.png)

Google Closure Compiler APP - Docker Image
==========================================

[![latest release](https://img.shields.io/github/release/femtopixel/docker-google-closure-compiler-app.svg "latest release")](http://github.com/femtopixel/docker-google-closure-compiler-app/releases)
[![Docker Pulls](https://img.shields.io/docker/pulls/femtopixel/google-closure-compiler-app.svg)](https://hub.docker.com/r/femtopixel/google-closure-compiler-app/)
[![Docker Stars](https://img.shields.io/docker/stars/femtopixel/google-closure-compiler-app.svg)](https://hub.docker.com/r/femtopixel/google-closure-compiler-app/)
[![Watch Ads](https://github.com/jaymoulin/jaymoulin.github.io/raw/master/utip.png "Watch Ads")](https://utip.io/femtopixel)
[![PayPal donation](https://github.com/jaymoulin/jaymoulin.github.io/raw/master/ppl.png "PayPal donation")](https://www.paypal.me/jaymoulin)
[![Buy me a coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png "Buy me a coffee")](https://www.buymeacoffee.com/3Yu8ajd7W)
[![Become a Patron](https://badgen.net/badge/become/a%20patron/F96854 "Become a Patron")](https://patreon.com/femtopixel)

THIS REPOSITORY IS AUTO-UPDATED BY [GITHUB-RELEASE-NOTIFIER](https://github.com/femtopixel/github-release-notifier) (https://github.com/femtopixel/github-release-notifier)

This image allows you to Compile your JS code using [Google Closure Compiler APP](https://developers.google.com/closure/compiler/docs/gettingstarted_app) in CLI

Usage
-----
```
usage: compiler.py [-h] [--js JS] [--js_output_file JS_OUTPUT_FILE]
                   [--compilation_level {WHITESPACE_ONLY,SIMPLE_OPTIMIZATIONS,ADVANCED_OPTIMIZATIONS}]

optional arguments:
  -h, --help            show this help message and exit
  --js JS               Input file
  --js_output_file JS_OUTPUT_FILE
                        Output file
  --compilation_level {WHITESPACE_ONLY,SIMPLE_OPTIMIZATIONS,ADVANCED_OPTIMIZATIONS}
                        Compilation level
```

## Default values

- `--js` : /dev/stdin (input your code)
- `--js_output_file` : /dev/stdout (Prints compiled code in the shell)
- `--compilation_level` : WHITESPACE_ONLY

Docker usage
------------

```
docker run --rm -ti -v /path/to/my/file.js:/root/myfile.js femtopixel/google-closure-compiler-app --js /root/myfile.js
```
