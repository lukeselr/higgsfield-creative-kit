# selrai-social-carousel-cover

**Use when**: you need a scroll-stopping cover slide for an Instagram or
LinkedIn carousel. Bold composition, eye-magnet, leaves space for headline.

## Recommended model

- **Higgsfield Soul 2.0** for bold editorial composition.
- Fallback: **Nano Banana Pro 4K** for crisp typography-friendly backgrounds.

## Prompt

```text
Bold square 1:1 cover image with strong negative space in the upper third,
single dominant subject <your-subject> centred lower-third, dramatic single
light source from above-camera-left, deep contrast, restricted colour palette
of two complementary tones, shallow depth of field, magazine-cover aesthetic
inspired by Wallpaper magazine layouts.
```

## Parameters

- **Aspect ratio**: `1:1` (carousel + IG feed)
- **Quality**: `high`
- **Seed**: lock so subsequent slides match aesthetic
- **Negative prompt**: `cluttered background, multiple subjects, text overlay,
  busy patterns`

## What to fill in

- `<your-subject>` — 4 words max, describing the visual hook (e.g. "single
  brass espresso cup", "founder mid-laugh", "a stack of leather notebooks").
- The upper-third negative space is intentional — that's where your headline
  goes when you drop the image into Figma / Canva / `carousel-generator`.

## Variations to try once

1. Colour palette: `monochrome warm neutrals` instead of `two complementary tones`
2. Composition: `subject centred, symmetric framing` instead of `lower-third`
3. Style: `inspired by Kinfolk magazine` instead of `Wallpaper`
4. Light: `soft top-down north light, no shadows` for product-only covers

## Pairing

- Pipe straight into `carousel-generator` skill — it knows how to lay text
  over the upper-third negative space.
- Pair with `direct-response-copy` for the headline that goes in that space.

## Why these choices

Negative-space-first composition is the single biggest cause of carousels
performing — every brand-design book agrees. The "Wallpaper magazine" prompt
boost works because it locks the model into a specific editorial register.
