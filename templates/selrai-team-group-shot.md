# selrai-team-group-shot

**Use when**: you need a team / group photo for an About page, hiring page,
press graphic, or LinkedIn company-update post.

## Recommended model

- **Cinema Studio Image** with multi-character support.
- Fallback: **Higgsfield Soul 2.0** with multiple Soul IDs (one per person —
  see `docs/soul-id-workflow.md`).

## Prompt

```text
Cinematic group shot of <N> people arranged in a loose semicircle, all in
casual professional attire, varied heights and poses to avoid lineup
stiffness, eye contact with camera from all subjects, ARRI Alexa 35 + 35mm
narrative lens, soft north light from camera-front, neutral studio backdrop
in warm grey, 16:9 framing with breathing room above heads, mood of warmth
and quiet confidence.
```

## Parameters

- **Aspect ratio**: `16:9` (web hero) or `4:5` (social)
- **Quality**: `ultra`
- **Seed**: lock once you have a composition you like
- **Reference**: upload one reference photo per Soul ID, or use a single group
  reference if you have one

## What to fill in

- `<N>` — number of people (4-8 reads best; 10+ gets hard)
- For best identity consistency, pre-train a Soul ID for each person and
  reference them as `subject 1: alice-soul-id, subject 2: ben-soul-id, …`
  inside the prompt.

## Variations to try once

1. Setting: `seated around a long meeting table, mid-conversation` (instead
   of semicircle) — reads as working, not posing
2. Light: `golden hour window light from camera-left, warm rim light from
   behind` — hero brand shot
3. Composition: `walking together through an open warehouse` — narrative
4. Mood: `mid-laugh, heads slightly tilted` for warmth

## Pairing

- Crop the resulting wide for IG carousel hero, full-width for About page.
- Pair with `direct-response-copy` for the team intro caption.

## Why these choices

`Loose semicircle` + `varied heights and poses` is the documented antidote to
the "AI lineup stiffness" failure mode — without those words you typically get
all subjects in identical posture. The 35mm lens wide enough to fit the group
without distortion at the edges.

## Caveat

Multi-character generation drifts more than single-subject. Plan for 5-10
generations to land one usable take. Locked seed + identity references
collapse drift dramatically.
