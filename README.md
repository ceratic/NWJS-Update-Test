# NW.js
## Features

* native notifications
* auto update
* gulp tasks to
  * build each release
  * sign the OS X app
  * pack
    * Windows: nsis installer
    * OSX: dmg
    * Linux: deb package
  * upload to GitHub
* remembers window position when closed
* customizable settings in the right-click menu
  * run as menu bar app
  * launch on OS startup
  * open links in the browser



## Pre-requisites

    # install gulp
    npm install -g gulp

    # install dependencies
    npm install

## Build

### Windows: create the installer

    gulp pack:win32

The output is in `./dist`. Take a look at `gulpfile.coffee` for additional tasks.

## Tips

Use the `--toolbar` parameter to quickly build the app with the toolbar on. E.g. `gulp build:win32 --toolbar`.

Use `gulp build:win32 --noicon` to quickly build the Windows app without the icon, which normally takes some seconds.

## Contributions

Contributions are welcome! For feature requests and bug reports please [submit an issue](https://github.com/Aluxian/nwjs-starter/issues).

## License

The MIT License (MIT)

Copyright (c) 2015 Alexandru Rosianu

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
