# selrai-asmr-scroll-stopper

**Use when**: you need an 8-second vertical video that stops scrolling cold.
Sensory, satisfying, audio-led. Works for product showcases, food, beauty,
fashion, and any tactile experience.

## Recommended model

- **Ads 2.0 ASMR** (Higgsfield) — purpose-built for the 8-second TikTok/Reels
  format.
- Fallback: **Sora 2** with sensory motion verbs.

## Motion-formula prompt

```text
[Opening action] Slow macro tilt down across <your-product-or-subject>,
single droplet of <liquid> rolling slowly over the surface.
[Camera position + movement] Locked-off macro shot, 100mm macro lens, gentle
slow push-in over 8 seconds.
[Environmental interaction] Subtle background blur of warm bokeh, soft
side-key light catching the surface texture.
[Camera effects] Shallow depth of field, slight chromatic aberration on
highlights, ultra-detailed micro-contrast.
[End mood] Frame settles on the product label fully in focus, mood: calm
satisfaction.
```

## Parameters

- **Aspect ratio**: `9:16` (Reels / TikTok / Shorts)
- **Duration**: 8 seconds (the format)
- **Audio**: ASMR — soft, close-mic, in sync with the motion. Use Higgsfield's
  built-in ASMR audio library or upload a recorded SFX layer.
- **Quality**: `high`
- **Seed**: lock if generating a series of ASMR shots for the same product

## What to fill in

- `<your-product-or-subject>` — the tactile thing. Examples: a candle being
  lit, a drink being poured, leather being polished, fabric being folded,
  espresso being pulled, dough being kneaded.
- `<liquid>` — water, oil, condensation, syrup, ink. Whatever fits the product.

## Top-performing ASMR scenes

1. Liquid pour into glass with foam settling
2. Single match strike, slow flame growth, candle wick catch
3. Soap lather forming on hand or surface
4. Fabric unfolding with subtle paper-like crinkle
5. Espresso crema swirl in slow pour
6. Wax seal melting on a letter
7. Knife slicing through butter / soap / clay
8. Bookpage turn with paper-grain detail

## Pairing

- Pair with `direct-response-copy` for the 6-word caption that goes over the
  final frame.
- Drop the 8-second clip into `ad-creative` skill as the scroll-stopper hook
  for a longer Meta ad.
- Stitch 3 ASMR variants back-to-back for a 24-second compilation Reel.

## Why these choices

ASMR ads outperform on watch-time because the audio-led pacing forces
audio-on viewing. The 8-second format is platform-optimal — long enough for
a story arc, short enough for the algorithm to push completion to 100%.
Every winning ASMR ad has ONE motion, ONE sound, ONE focal subject. If you
prompt for two of any of those, the model splits attention and the watch-time
collapses.
