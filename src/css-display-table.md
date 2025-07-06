---
title: Use "display: table" to render non-table HTML elements like tables
date: 2025-07-06
---
It's possible to cause non-`<table>` HTML elements to render like tables using the following (each line on a different element);

```css
foo { display: table; }
bar { display: table-row; }
baz { display: table-cell; }
```

Why would you do this? Well, in my case, I wanted to have an unordered list (`<ul>` and its `<li>` children) to look appear as a table with two columns. I did this so that text-mode (or old) browsers (like lynx and w3m) would just displaya normal list, while still having nice formatting on modern browsers. The only issue I encountered is that Dillo appears to interpret "unknown" `display` values as no formatting at all--but that's not a big deal since Dillo users are probably used to disabling remote stylesheets anyway.

In my case, the CSS looked like this (making all `<time>` elements the same width, without any automatic line-wrapping):

```css
ul.posts { padding-left: 0em; list-style-type: none; display: table }
ul.posts li { display: table-row; }
ul.posts li time { padding-right: 1em; white-space: nowrap; }
ul.posts li time, ul.posts li a { display: table-cell; padding-bottom: 0.5em; }
```

