---
title: "Use \":set paste\" when pasting into Vim"
date: 2025-05-16
keywords: [vim]
---
In the past, when I'd paste code into Vim, it would indent each line one additional level. Now I know the solution is to do:

1. `:set paste`
2. Paste in code
3. Note there's no extraneous indentation!
4. `:set nopaste` (just to reset)

I really wish I had found this sooner...

