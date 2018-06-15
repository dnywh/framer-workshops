# Framer Shortcuts
A collection of useful code snippets and practices for Framer.

## Working with Sketch layers
### Shorthand for Sketch layers
This line, placed after your Sketch import, will remove the need to prepend any ofyour Sketch layers with `sketch.` in Framer:
```
Utils.globalLayers(sketch)
```

A nice article on this: [Sketch tips for Framer.js](https://medium.com/sketch-app-sources/sketch-tips-for-framer-js-73b579332993)


## Scroll
### Interrupting scroll
Use `layerName.onTapEnd ->` instead of `layerName.onTap ->`. For some reason the former allows the scroll to be interupted. The latter forces you to tap twice: first to interrupt the scroll, second to trigger the event.

## Animation
### Customising Bezier animation curves
Framer provides some good defaults:
- `Bezier.ease`
- `Bezier.easeIn`
- `Bezier.easeOut`
- `Bezier.easeInOut`

These are cousins of traditional easing functions. That means you can take CSS values from elsewhere, wrap them in quotes (so they're a string), and use them in Framer. I like [easings.net](easings.net) and [cubic-bezier.com](cubic-bezier.com).

An example:
I want to use the _easeInBack_ preset from [easings.net](https://easings.net/#easeInBack). The CSS value they give us is:

```
cubic-bezier(0.6, -0.28, 0.735, 0.045)
```

In Framer I can include this as:

```
curve: "cubic-bezier(.42,0,.58,1)"
```

