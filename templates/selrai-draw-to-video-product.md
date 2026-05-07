# selrai-draw-to-video-product

**Use when**: you have a product image and a destination scene, and you want
the product inserted into the scene + animated. Fastest path to "my product
in a real-world context" without a photoshoot.

## Recommended model

- **Draw-to-Video** (Higgsfield) — purpose-built for image-insert + animate.
- Fallback: **Higgsfield DoP** with `Image2Video` mode + insert reference.

## Workflow

```text
Step 1 — open Higgsfield → Draw-to-Video workflow
Step 2 — upload your product image as the "object to insert"
Step 3 — upload (or generate) the scene image as the "destination"
Step 4 — draw the rough position + scale where the product should sit in
         the scene (a quick rectangle is enough)
Step 5 — describe the motion — see motion prompt below
Step 6 — generate 3 variants
```

## Motion prompt

```text
The <your-product> sits naturally in the scene at the position drawn,
catching ambient light from the scene's existing light source, then
performs <one-specific-motion>, with the camera <camera-move> for the
last 2 seconds.
```

## What to fill in

- `<your-product>` — short product name (e.g. "amber serum bottle").
- `<one-specific-motion>` — one verb-led action. Examples:
  - `slowly tips over and rolls 180 degrees onto its side`
  - `is picked up by a hand entering frame from camera-right`
  - `releases a slow ribbon of liquid from its open cap`
  - `is unboxed from packaging that opens around it`
- `<camera-move>` — `slow push-in`, `pull-back to reveal context`, `static
  lock-off`, or `subtle orbit`.

## Parameters

- **Aspect ratio**: match your scene image (typically `9:16` for vertical, `1:1`
  for feed)
- **Duration**: 5-8 seconds (longer = more drift)
- **Quality**: `high`
- **Light matching**: tick "match scene lighting" — Higgsfield will infer the
  scene's key/fill direction and apply it to the inserted product

## When this beats a real photoshoot

- Multiple scenes, same product — generate the product once, drop into 5
  different scenes for the price of one shoot.
- Seasonal scenes you can't physically visit (snow, beach, sunset desert).
- Rough composite mockups before committing to a real shoot.

## When it doesn't

- Hero pieces — Draw-to-Video has slight edge artifacts at the insertion
  boundary that real shoots don't. For above-the-fold hero, do a real
  photoshoot or use `selrai-product-hero.md` (full-AI native generation).
- Anything where the product must interact with a person's hand or face —
  the insertion pipeline doesn't model contact dynamics well yet.

## Pairing

- Generate 5 variants in 5 different scenes, pipe into `meta-ads-mcp-setup`
  as a creative-test set.
- Pair with `direct-response-copy` for caption tracks.

## Why these choices

The "drawn position + scale" step is what unlocks coherent insertion — without
it the model picks a position itself and often gets occlusion wrong. The
camera-move-for-the-last-2-seconds rule is a Higgsfield documented best
practice for Draw-to-Video: a static product with camera-only motion reads
as a real shoot more than animated-product-static-camera does.
