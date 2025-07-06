---
title: Safari default styles finally support dark mode
date: 2025-05-22
keywords: [apple,css,web-development]
---
Despite seeing consistent praise for Apple's accessibility efforts, Safari on iOS always had a glaring issue: dark mode links were dark-blue-on-black when using their default styles (unlike every other browser that chose a reasonable contrast ratio).

A few days ago, however, I noticed that this issue has finally been fixed! That means **you can finally use dark mode *without explicitly specifying colors* and have it be legible for the large number of iPhone users out there**. Here's how this site's dark mode is implemented:

```css
:root { color-scheme: light dark; }
```

That's all that's required, thanks to default styles!

