# selrai-before-after-pair

**Use when**: you need a paired image — before/after, chaos/calm, problem/
solution, old way/new way. Workhorse for landing-page hero sections, ad
creative, and explainer carousels.

## Recommended model

- **Higgsfield Soul 2.0** for both panels — keeps style consistent.
- Generate as TWO separate images with the SAME seed and matched MCSLA values
  except for the deliberate change.

## Prompt — panel A (before)

```text
Wide top-down shot of <chaotic-subject>, harsh overhead fluorescent light,
desaturated colour grade, slight blue-grey wash, cluttered composition,
35mm wide-angle lens, mood of friction and overwhelm.
```

## Prompt — panel B (after)

```text
Wide top-down shot of <calm-subject>, soft warm window light, natural saturated
colour grade, slight golden cast, clean minimal composition, 35mm wide-angle
lens, mood of clarity and ease.
```

## Parameters (both panels)

- **Aspect ratio**: `1:1` for side-by-side stack, or `16:9` for one above the other
- **Quality**: `high`
- **Seed**: identical across both panels (e.g. `seed=42`)
- **Lens**: identical across both panels (35mm wide here)
- **Camera angle**: identical across both panels (top-down)

## What to fill in

- `<chaotic-subject>` — the "before" thing. Examples: "a desk strewn with 14
  different SaaS dashboards open on three monitors", "a cluttered kitchen
  counter mid-cook", "a stack of unopened tax mail".
- `<calm-subject>` — the "after" thing. Examples: "a single laptop showing
  one unified dashboard", "a clean kitchen counter with one finished dish",
  "a single signed-off Xero report on screen".

## Why these choices

Same seed + same lens + same camera angle = the panels read as a true
"transformation" not a stylistic shift. Only colour grade, light, and
composition density change. The narrative work is done by the colour grade
contrast (desaturated → warm) more than the subject change.

## Pairing

- Drop the pair into a `carousel-generator` 2-slide carousel as the hook.
- Pair with `direct-response-copy` for the one-line caption that names the
  transformation.
- Use as the hero of a landing page — A above the fold, B revealed on scroll.
