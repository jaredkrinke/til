---
title: Use BackstopJS to graphically compare HTML files
date: 2025-06-13
---
If you've got a pile of static HTML files that you want to graphically compare:

* Install [BackstopJS](https://github.com/garris/BackstopJS) (`npm install backstopjs`)
* Install [backstop-crawl](https://github.com/fffunction/backstop-crawl) (`npm install backstop-crawl`)
* Serve your HTML using Python (`python -m http.server -b 127.0.0.1 8888`)
* Crawl the site to generate a Backstop config (`npx backstop-crawl http://127.0.0.1:8888/`)
* Modify the `engine` field in the generated config to be `puppet` instead of `phantomjs` (PhantomJS is no longer supported)
* Generate images (`npx backstop test`)
* Set generated images as a baseline (`npx backstop approve`)

Now, finally, you're set up and can test:

* Regenerate your HTML files (or restart the web server to read from a different directory)
* Generate test images and compare them (`npx backstop test`)

In my case, I have been reimplementing my static site generator and I want to ensure the output is roughly the same. I had been using `diff -r`, but I don't actually care about line-by-line, character-by-character differences, e.g. `&apos;` and `&#39;` are visually the same. I'm also reimplementing syntax highlighting and expect those to be slightly different. Hence, I'm using the tools above.

