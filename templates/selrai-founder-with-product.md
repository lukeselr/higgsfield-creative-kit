# selrai-founder-with-product

**Use when**: founder + product in one frame — for landing pages, About pages,
PR shots, podcast appearance graphics. Hero composition.

## Recommended model

- **Cinema Studio Image** (Higgsfield) — best for two-subject composition.
- Fallback: **Higgsfield Soul 2.0** if you have a Soul ID.

## Prompt

```text
Cinematic medium shot of <your-character> holding <your-product> at chest
height, slight three-quarter turn toward camera, eye contact with viewer,
softbox key light from camera-right, fill bounce from camera-left, ARRI
Alexa 35 + 35mm narrative lens, deep cinematic colour grade, confident
considered expression, neutral studio backdrop in warm grey, 4:5 framing
with breathing room above the head.
```

## Parameters

- **Aspect ratio**: `4:5` (versatile) or `2:3` (landing page hero)
- **Quality**: `ultra`
- **Seed**: lock — you'll want consistency across hero shots
- **Reference**: upload a clear product image to anchor the model

## What to fill in

- `<your-character>` — Soul ID name preferred for face consistency.
- `<your-product>` — describe in 6 words, including a colour cue (helps the
  model anchor: "black leather notebook with brass corners").

## Variations to try once

Lock seed, change one variable:

1. Pose: `holding product up to camera, slight grin` instead of chest height
2. Light: `golden hour window light from camera-left` instead of softbox
3. Background: `floor-to-ceiling bookshelf, defocused` instead of neutral
4. Lens: `85mm portrait lens for tighter compression` instead of 35mm

## Pairing

- Hand the resulting frame to `ad-creative` skill as the source for a static
  ad set.
- Pair with `copywriting` skill for the on-image headline (or pull it into
  Figma and lay text manually).

## Why these choices

The product needs a separate reference image — text-only descriptions of a
product produce drift across generations. The 35mm lens is Higgsfield's
documented narrative lens; 85mm pushes too tight for "founder + product"
to read naturally.
