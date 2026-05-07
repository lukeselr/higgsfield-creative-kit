# selrai-recast-character-swap

**Use when**: you have an existing video (yours or a stock clip you have
rights to) and you want to swap the character with your Soul ID while
preserving the original motion. Workhorse for repurposing performance
captures, stock footage, and trend-format videos.

## Recommended model

- **Recast Studio** (Higgsfield) — purpose-built for character swap with
  motion preservation.
- Fallback: **Video Face Swap** (Higgsfield) for face-only swap with the
  original body retained.

## Workflow

```text
Step 1 — open Higgsfield → Recast Studio
Step 2 — upload <source-video-url>
Step 3 — select your Soul ID as the target character (see docs/soul-id-workflow.md)
Step 4 — pick swap mode:
         "Full Recast" — character body + face replaced, motion preserved
         "Face Only"   — just the face swapped, original body retained
         "Style Cast"  — character preserved, scene + lighting restyled
Step 5 — describe any tweaks (wardrobe, lighting, mood) — see prompt below
Step 6 — generate. Recast typically takes 60-90 seconds for 8-15 second
         source videos
```

## Tweak prompt (optional but recommended)

```text
Recast <your-character> into the source video, preserving original motion
exactly. Wardrobe: <your-brand-wardrobe>. Lighting: match source scene
exactly. Skin tone: natural. Expression: match source frame-by-frame.
Do not alter background or motion.
```

## What to fill in

- `<source-video-url>` — the source clip. Must be one of: your own footage,
  stock with usage rights, or AI-generated content you own. **Never recast a
  copyrighted person without consent — this is a hard ethical line, not just
  a Higgsfield ToS thing.**
- `<your-character>` — Soul ID name (mandatory — Recast won't work without
  a trained Soul ID).
- `<your-brand-wardrobe>` — describe in 6 words. Examples: "white t-shirt
  and dark indigo jeans", "navy linen shirt, no jewellery".

## When this beats a fresh generation

- You have a winning trending-format video and want to put your face in it
  without choreographing the trend yourself.
- You have a stock dance / sport / hospitality clip with rights, and want it
  populated with your brand's character.
- You captured a perfect performance take but the wrong person delivered it.

## When it doesn't

- The source motion is incompatible with your Soul ID's body type — extreme
  athletic motion on a non-athletic Soul ID drifts hard.
- The source video's face is heavily occluded or rotates beyond profile —
  Soul ID re-projection breaks past 75° rotation.
- The legal / ethical situation is murky. **If in doubt, don't.**

## Parameters

- **Aspect ratio**: matches source
- **Duration**: matches source (typically 5-30 seconds — longer = more drift)
- **Quality**: `high`
- **Identity strength**: `0.85` is a good default — high enough to lock
  identity, low enough to let the model handle motion variance

## Pairing

- Pair with `selrai-ugc-talking-head.md` — build a UGC-style ad once, then
  recast multiple Soul IDs into it for A/B testing different presenters.
- Pair with `direct-response-copy` for the voiceover script if recasting
  silent stock.

## Why these choices

Recast Studio works by extracting motion vectors from the source frame-by-
frame and re-rendering with your Soul ID as the subject. The motion-vector
extraction is the magic — it's what makes it different from face swap.
Identity strength `0.85` is Higgsfield's documented sweet spot: lower drifts
mid-clip, higher kills natural motion variance.

## Ethical guardrails

- Only Soul IDs you trained yourself or have explicit rights to use.
- Only source videos you have rights to recast (own footage, licensed stock,
  or AI-gen you own).
- Never recast a real public figure or competitor's content.
- If your team is uncertain about a use case, pause and check.
