# selrai-sora2-trend-template

**Use when**: you want to ride a current short-video trend — luxury reveal,
TikTok meme format, sport montage, ASMR trending sound — without
choreographing every frame yourself.

## Recommended model

- **Sora 2 Trends** (Higgsfield) — 20+ documented trend templates.
- Fallback: **Veo 3.1** with explicit trend-naming in the prompt.

## Available trend templates (as of 2026)

| Template | When to use |
|---|---|
| **Luxury Reveal** | Premium product unveiling, watches, fashion drops |
| **TikTok POV** | Founder POV stories, day-in-the-life, behind-the-scenes |
| **ASMR Trend** | Sensory product (food, beauty, tactile) |
| **Sport Montage** | High-energy, fitness, performance products |
| **Storytime** | Customer testimonials told over visual b-roll |
| **Get Ready With Me** | Beauty, fashion, founder routine |
| **Day in the Life** | Lifestyle products, services, founder content |
| **Thirst Trap Light** | Hospitality, travel, food (tasteful only) |
| **Glow-Up Reveal** | Before/after, transformations |
| **Chef's Kiss** | Food, drink, anything served plated |
| **Pull-Up Cinema** | Auto, retail flagship, hospitality arrival |
| **Wholesome Family** | B2C consumer brands, baby, pet, home |

## Workflow

```text
Step 1 — pick the trend that matches your product/service from the table above
Step 2 — open Higgsfield → Sora 2 Trends workflow → select the template
Step 3 — fill the template's required slots (subject, setting, optional voice)
Step 4 — add your brand reference: <your-product-image-url>
Step 5 — generate 3 variants
Step 6 — pick the strongest, ask for 2 more variants of just the opening 2 sec
```

## MCSLA-style prompt overlay

When the template asks for a custom prompt:

```text
Model: sora2-video
Camera: <trend-template-default> — don't override unless you know why
Subject: <your-product-or-character> as the centre of the trend
Look: <your-brand-aesthetic> applied as colour grade only
Action: <one-specific-action-the-trend-format-supports>
```

## Parameters

- **Aspect ratio**: `9:16` (almost always — these trends are vertical-native)
- **Duration**: trend-determined (typically 8-15 seconds)
- **Audio**: many trend templates auto-pair to a trending sound. Confirm the
  sound is licensed for ad use before paying to boost.
- **Quality**: `high`

## What to fill in

- Trend choice from the table.
- `<your-product-or-character>` — the centre of the trend.
- `<your-brand-aesthetic>` — colour grade descriptor (warm/cool, saturated/
  desaturated, film/digital).

## Pairing

- Pair with `social-content` skill for caption + hashtags tuned to the platform.
- Run captions through `humanizer` skill before publishing.

## Why these choices

Sora 2 Trends works because Higgsfield has pre-trained the camera/motion
choreography for each trend. You don't have to choreograph the swoop, the
push-in, the reveal — you just describe your subject and brand, and it
inserts the subject into the trending format. This is a 100x speed gain over
prompting Sora 2 raw.

## Caveat

Trends die fast. A template that worked in March may feel stale by May.
Check Higgsfield's blog for the freshest trend templates before committing
to a series.
