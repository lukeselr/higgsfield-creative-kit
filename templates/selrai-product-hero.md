# selrai-product-hero

**Use when**: you need a hero product shot for a landing page, ad creative,
email header, or PDP banner. Studio look, scroll-stopping.

## Recommended model

- **Nano Banana Pro 4K** — sharpest product detail.
- Fallback: **Higgsfield Soul 2.0** for a more painterly, premium-brand look.
- Fallback: **Cinema Studio Image** for editorial / lifestyle hybrid.

## Five-variable prompt (Nano Banana framework)

```text
Subject: <your-product>, hero centre frame, every label legible, no logos cropped.
Composition: 4:5 portrait, 50mm macro lens, shallow depth of field, slight
top-down 15° tilt.
Action: subject perfectly still, no motion blur, single drop of condensation
caught mid-fall on the side.
Location: matte black acrylic surface, infinity curve background in muted slate
grey, single softbox key light from camera-right at 45°.
Style: editorial product photography, inspired by Apple keynote stills, ARRI
Alexa colour science, deep blacks, rich micro-contrast, no oversaturation.
```

## Parameters

- **Aspect ratio**: `4:5` (Meta ads + IG feed) or `1:1` (versatile)
- **Quality**: `ultra`
- **Seed**: lock from generation 1 so all hero variants share identity
- **Negative prompt**: `text overlay, watermark, multiple products, hands,
  motion blur, oversaturated`

## What to fill in

- `<your-product>` — describe in 6 words max: name + category + key visual
  feature (e.g. "Heka skincare serum, amber glass dropper bottle").

## Variations to try once

Lock seed, change one variable:

1. Background: `linen drape backdrop, warm tungsten side-light` (lifestyle look)
2. Lens: `35mm wide angle from below` (heroic, low-hero shot)
3. Surface: `wet polished marble with soft reflection` (luxury)
4. Lighting: `single beam shaft of light from above-camera-left` (theatrical)

## Pairing

- Generate 4 variations, hand them to `ad-creative` skill to pick the
  highest-CTR candidate.
- Use as slide 1 of a `carousel-generator` 5-tip carousel.
- Pair with `copywriting` skill for a 3-line product description.

## Why these choices

The 5-variable framework is Higgsfield's documented Nano Banana Pro pattern.
Skipping any of the five (especially Action) usually produces flatter output.
See `docs/cookbook.md` § "Nano Banana 5-variable framework" for examples.
