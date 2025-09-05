---
title: Use "color-mix()" for computing colors in CSS
date: 2025-07-08
keywords: [css]
---
Recently, CSS gained the ability to compute colors using [`color-mix()`](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value/color-mix).

I try to keep my CSS simple, but there's one scenario where I need to compute colors: **creating light vs. dark mode-agnostic themes**. For example: this site. One trouble is that CSS doesn't expose the browser's default styles/colors, so previously I was stuck with essentially two colors: white and black. But now I'm able to generate shades of gray that work in both light and dark mode:

```css
/* Enable both light and dark modes */
:root { color-scheme: light dark; }

/* Add a faint background to code blocks */
pre, code:not(pre code) {
  background: color-mix(in srgb, currentColor 12%, transparent);
  border-radius: 0.5em;
}
```

The first line means that the site supports both light and dark mode. The other lines mean that code blocks have a background that is generated from `currentColor` (i.e. the color of text--dark for light mode and light for dark mode). This yields a subtle but noticeable shade of gray that works nicely regardless of dark mode. Open F12 dev tools and toggle light/dark mode and behold the result!

