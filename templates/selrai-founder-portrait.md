# selrai-founder-portrait

**Use when**: you need a hero portrait of yourself for a website, About page, social bio, podcast cover, or LinkedIn header. Cinematic, founder-grade.

## Recommended model

- **Cinema Studio Image** (Higgsfield) — best aesthetic control + cinematic look.
- Fallback: **Soul Cinema** if you have a Soul ID trained for yourself.
- Fallback: **Nano Banana Pro 4K** if you want maximum sharpness for print.

## MCSLA-filled prompt

```text
Cinematic medium close-up of <your-character> seated in a softly lit study,
natural window light from camera-left, ARRI Alexa 35 + 50mm anamorphic lens,
shallow depth of field, warm cinematic colour grade, calm and considered mood,
35mm film grain.
```

## Parameters

- **Aspect ratio**: `2:3` (portrait) or `4:5` (Instagram-friendly)
- **Quality**: `high`
- **Seed**: pick one and lock it (e.g. `seed=42`) so you can generate variations
  with the same face/lighting later
- **Style strength**: `0.75` if using Soul ID — leaves room for the model to
  refine while preserving identity

## What to fill in

- `<your-character>` — your Soul ID name (see `docs/soul-id-workflow.md` to
  train one), or describe yourself in 8 words: gender + approx age + hair +
  build + signature accessory.
- The "study" environment can be swapped for: home office / open kitchen /
  rooftop at golden hour / blank concrete studio / your own brand backdrop.

## Variations to try once

Lock the same seed and change only one variable each time:

1. Lighting: `harsh top-down studio strobe` instead of `natural window light`
2. Lens: `85mm portrait lens, very shallow DoF` instead of `50mm anamorphic`
3. Mood: `confident smile, subject looking direct to camera` instead of `calm
   and considered`
4. Environment: `rooftop at golden hour overlooking city skyline` instead of
   `study`

## Pairing

- Pipe the image into `nano-banana` MCP for a 4K upscale before web use.
- Use as the cover slide for a `carousel-generator` Instagram carousel.
- Pair with a `copywriting`-skill bio caption for the post.

## Why these choices

Real-gear references (`ARRI Alexa 35`, `50mm anamorphic`) consistently produce
better cinematic output than generic words like "cinematic" or "professional".
See `docs/cookbook.md` § "Real-gear references" for the full list.
