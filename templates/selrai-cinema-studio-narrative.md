# selrai-cinema-studio-narrative

**Use when**: you want a film-grade narrative shot for a brand piece, founder
story, About video, or anchor scene in a longer cut. Cinema-quality, not
ad-quality.

## Recommended model

- **Cinema Studio 3.5** (Higgsfield) — three-pill UI: Genre / Style / Camera.
  Latest cinema-grade pipeline.
- Fallback: **Veo 3.1** for native-audio cinema looks.
- Fallback: **Higgsfield DoP** for tight motion-control camera moves.

## Three-pill prompt structure

Cinema Studio 3.5 takes three layered inputs.

### Pill 1 — Genre

Pick one. Don't mix.

- `Drama` — character-driven, considered pacing
- `Documentary` — observational, slight handheld, natural light
- `Action` — kinetic camera, faster cuts implied
- `Romance` — soft, warm, slow camera moves
- `Thriller` — high contrast, low-key light, slow push-ins
- `Comedy` — bright, clean, natural framing
- `Sci-fi` — cool tones, high-tech surfaces, controlled light
- `Western` — warm earth tones, wide vistas, natural light

### Pill 2 — Style

Pick a director / cinematographer reference.

- `Inspired by Roger Deakins` — naturalistic, every shot narrative-justified
- `Inspired by Emmanuel Lubezki` — natural light obsessive, single-take feel
- `Inspired by Christopher Doyle` — handheld emotion, smeared neons
- `Inspired by Bradford Young` — low-key, deep blacks, character-led
- `Inspired by Robbie Ryan` — documentary-grade naturalism

### Pill 3 — Camera

Pick a single move. One per shot. See `docs/cookbook.md` § "Camera moves" for
the full set.

- `Slow dolly in` — intimate reveal
- `Crash zoom` — sudden focus shift, tension
- `Orbit` — character revelation, signature establish
- `Tracking shot` — character motion, narrative momentum
- `Static lock-off` — observational, emotional weight
- `Handheld follow` — documentary energy
- `Pull back` — environmental context expand

## Prompt assembly

```text
Genre: Drama.
Style: Inspired by Roger Deakins.
Camera: Slow dolly in over 6 seconds.

A cinematic medium close-up of <your-character> seated alone at a wide oak
desk, single window-light source from camera-right at golden hour, ARRI
Alexa 35 + 35mm narrative lens, deep cinematic colour grade with warm
highlights and cool shadows, mood of quiet contemplation, the subject
slowly looks up to camera by the end of the move. Handheld micro-shake on
35mm anamorphic.
```

## Parameters

- **Aspect ratio**: `2.39:1` (cinemascope) or `16:9` (web hero)
- **Duration**: 6-8 seconds for one move; longer cuts stitch from multiple
  generations
- **Quality**: `ultra`
- **Audio**: Cinema Studio 3.0+ supports native dual-channel stereo audio —
  describe ambient sound (`distant traffic`, `quiet office hum`) in the prompt.

## What to fill in

- `<your-character>` — Soul ID strongly recommended for face consistency.
- The desk / window / golden hour can be swapped — pick one specific
  environment and describe it richly.

## Variations to try once

Lock seed, change one variable:

1. Camera move: `crash zoom` instead of `slow dolly in` — same scene, very
   different emotional weight
2. Genre: `Documentary` instead of `Drama` — looser handheld, less posed
3. Style: `Inspired by Christopher Doyle` for a romantic / nostalgic register
4. Light: `night, single practical lamp on desk, deep shadows` — film noir

## Pairing

- Generate 3-5 narrative shots, hand to your editor for the final cut.
- Pair with `direct-response-copy` for the voiceover script if you're
  layering narration.
- Use as the anchor of a longer brand film; lighter b-roll comes from
  `selrai-lifestyle-broll.md`.

## Why these choices

Cinema Studio 3.5's three-pill UI separates concerns — genre sets emotional
register, style sets visual language, camera sets motion. Mixing two genres
or two camera moves in a single shot dilutes both. The Roger Deakins
reference is the most reliable Higgsfield cinematographer trigger because
his work is the most deeply documented in the training data.
