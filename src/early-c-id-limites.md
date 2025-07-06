---
title: Early C only used the first few characters of function names
date: 2025-05-23
keywords: [c]
---
It turns out there's a reason that the C standard library has such cryptic names for its functions:

**Early C (including ANSI C, a.k.a. C89, if I understand correctly) required external functions to have their first 6 characters be unique.**

I even saw a claim that `strncpy` would have been `strcpyn` if not for this limitation. As much as I enjoy the simplicity and ubiquity of C, it *does* come with a noticeable amount of annoying baggage.

