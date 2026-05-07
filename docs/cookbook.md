# Higgsfield Prompting Cookbook

Distilled from Higgsfield's own prompt guides, the OSideMedia prompt skill,
and ~6 months of operator-grade testing. Read this once, then keep it open
in a tab while you work.

## The seven hard rules

1. **Short prompts beat long ones.** For ad templates, stay under 25 words.
   Long prompts dilute focus and cost generations.
2. **Specific verbs beat adjectives.** Use `dolly in`, `orbit`, `crash zoom`.
   Avoid `cinematic`, `dynamic`, `epic` — they're meaningless to the model
   in 2026.
3. **One prompt = one task.** Don't try to do two things in one shot. Two
   subjects, two camera moves, two emotions all dilute. Split into two prompts.
4. **Reference real gear.** `ARRI Alexa 35`, `Panavision anamorphic`, `inspired
   by Roger Deakins`. Real cinematographer references trigger trained looks.
5. **Lens picks register.** `24mm wide` = environmental. `35mm narrative`
   = cinematic. `50-75mm` = intimate close-up. `100mm macro` = product detail.
6. **Lock seeds for series.** Same look across multiple frames means same
   seed. Change one variable at a time.
7. **Temporal markers in video.** `For the first two seconds...`,
   `Suddenly...`, `By the end...` give the model a story arc to render against.

## Image formula (Higgsfield baseline)

```text
[Shot type + subject] +
[Camera angle] +
[Lighting] +
[Environment] +
[Lens / film look] +
[Mood / tone]
```

Each segment is a comma-separated phrase. Don't pad with conjunctions.

## Video motion formula

```text
[Opening action] +
[Camera position + movement] +
[Environmental interaction] +
[Camera effects] +
[End mood]
```

Every winning video shot fills all five. Skipping `Camera effects` or `End
mood` reliably produces flat output.

## Nano Banana Pro 5-variable framework

For **Nano Banana Pro / 4K image generation**:

1. **Subject** — hyper-specific, named.
2. **Composition** — lens + aspect + framing.
3. **Action** — always include movement, even subtle (`mid-pour`,
   `frozen mid-step`, `light catching the surface`).
4. **Location** — atmosphere, not just place.
5. **Style** — artistic medium reference, not generic style word.

If any of the five is missing, the output flattens. The most-skipped is
**Action** — even still images need an implied motion to come alive.

## MCSLA formula (OSideMedia, video-first)

```text
Model · Camera · Subject · Look · Action
```

- **Model** — pick deliberately (Sora 2 for trends, Veo 3.1 for native
  audio, Kling for motion control, DoP for cinema-grade camera)
- **Camera** — one move only
- **Subject** — name it specifically
- **Look** — colour grade + film stock + cinematographer reference
- **Action** — what happens, in temporal order, with markers

## Camera moves (the curated set)

| Move | What it does | When to use |
|---|---|---|
| **Slow dolly in** | Camera moves toward subject smoothly | Intimate reveals, emotional reveals |
| **Crash zoom** | Sudden focus shift via fast zoom | Tension, surprise, comedic punch |
| **Orbit** | Camera circles subject | Character establish, signature reveal |
| **Tracking shot** | Camera follows moving subject laterally | Narrative momentum, character motion |
| **Push-back / pull-back** | Camera retreats from subject | Environmental context expand, emotional distance |
| **Static lock-off** | Camera does not move | Observational weight, deliberate stillness |
| **Handheld follow** | Subtle handheld behind subject | Documentary energy, immediacy |
| **Whip pan** | Fast horizontal sweep | Scene transition, energetic cut |
| **Tilt up / tilt down** | Camera rotates vertically without moving | Reveal, subject scale |
| **Dutch angle** | Camera tilted off-axis | Tension, unease, dynamic action |

Don't combine two of these in one prompt. One per shot.

## Lens reference

| Lens | Effect | Use for |
|---|---|---|
| **24mm wide** | Wide environmental, mild distortion at edges | Establishing, b-roll, group shots |
| **35mm narrative** | Cinematic medium, natural perspective | Most narrative shots, founder content |
| **50mm intimate** | Tight, slightly compressed | Close-up emotion, dialogue |
| **75mm portrait** | Compressed, beautiful skin compression | Hero portraits, beauty |
| **100mm macro** | Extreme close, single-subject sharp | Product detail, ASMR |
| **85mm telephoto** | Compressed background, subject isolation | Editorial, fashion |

## Real-gear references that actually work

These trigger trained looks in Higgsfield's models:

- `ARRI Alexa 35` — modern cinematic colour science
- `ARRI Alexa Mini LF` — large-format cinema
- `Panavision anamorphic` — wide-screen cinema oval bokeh
- `RED Komodo` — sharp digital cinema
- `Sony FX6` — documentary-cinema hybrid
- `Kodak Vision3 500T` — warm film stock
- `Kodak Portra 400` — portrait film stock
- `Fuji Provia 100F` — slide film, saturated daylight
- `Inspired by Roger Deakins` — naturalistic cinematography
- `Inspired by Emmanuel Lubezki` — natural-light obsessive
- `Inspired by Christopher Doyle` — handheld, smeared neons
- `Inspired by Bradford Young` — low-key, deep blacks
- `Wallpaper magazine layout` — bold editorial composition
- `Kinfolk magazine aesthetic` — soft, neutral, lifestyle

## Light-language reference

Every prompt should pin the light source.

- `Soft window light from camera-left` — natural, calm
- `Single softbox key from camera-right at 45°` — controlled studio
- `Harsh top-down strobe` — fashion, high-impact
- `Golden hour low-angle from behind subject` — heroic rim
- `Cool overhead fluorescent` — institutional, slightly off
- `Single practical lamp on desk` — film noir, dramatic
- `Mixed practical light, naturalistic` — documentary feel

## UGC hook formulas (for video templates)

12 patterns documented in 2026 to start a winning UGC ad:

1. *"I tried this for X days and..."* (curiosity + experiment)
2. *"This is the only thing I let on my Y..."* (exclusivity + ritual)
3. *"If you have X, please don't make this one mistake..."* (fear + audience-name)
4. *"I switched from X to Y and..."* (comparison + before/after)
5. *"My Y told me to do this and..."* (third-party authority)
6. *"Most people get X wrong. Here's why..."* (contrarian + reveal)
7. *"You don't need X to Y..."* (myth-bust + simplification)
8. *"This took me Z years to figure out..."* (hard-won wisdom)
9. *"I bought X so you don't have to..."* (consumer-as-tester)
10. *"Three things I wish I knew before X..."* (list + relatability)
11. *"I'm not gonna lie..."* (authenticity opener)
12. *"POV: you finally..."* (immersive imagination)

## Reverse prompting

When you want to recreate a look you've seen:

- Use the **Higgsfield Chrome extension** — right-click any image online,
  send to Higgsfield, the model recreates it (you can sub in your Soul ID).
- Upload reference images to Nano Banana Pro with `weight values` (the
  reference image's contribution to the final output, 0-1).
- For video, use **Recast Studio** to swap your Soul ID into a reference clip.

## Anti-slop rules (Seedance 2.0)

These keep generations from looking generic:

- **No slop adjectives**: `beautiful`, `amazing`, `stunning`, `gorgeous`,
  `perfect` — all banned. Use specific descriptors.
- **No corporate words**: `professional`, `polished`, `clean` — they kill
  the cinematic register. UGC kills if you include these.
- **No "AI" giveaways**: `4k`, `hyper-realistic`, `ultra-detailed`. The model
  already aims for these — saying them adds nothing and often makes output
  worse.
- **Ban these from every prompt**: `cinematic` (too generic — be specific),
  `dynamic`, `epic`, `breathtaking`, `masterpiece`, `award-winning`.

## When generations fail

Common diagnosis:

| Symptom | Cause | Fix |
|---|---|---|
| Face drifts mid-clip | No Soul ID | Train one. See `docs/soul-id-workflow.md`. |
| Output flat / generic | Too few prompt variables | Add Action + specific Light + lens reference. |
| Two-subject shot wrong | Multi-character drift | Split into two passes, composite externally. |
| Trend doesn't read as the trend | Trend template not selected | Use Sora 2 Trends workflow, not raw Sora prompt. |
| Product details wrong | No reference image | Upload a clear product shot as reference with weight 0.6. |
| Camera move doesn't match prompt | Two moves in one prompt | Cut to one. Re-prompt. |
| Same prompt, wildly different outputs | Seed not locked | Lock seed, change one variable. |

## When to graduate from this cookbook

When this cookbook starts feeling restrictive — when you're consistently
getting the looks you want and you can sense which lever to pull next — open
the vendored prompt skill at `~/.claude/skills/higgsfield/SKILL.md`. It's
the deeper cookbook with 20 sub-skills, validation scripts, and per-model
deep dives.

That's the second-act read. This file is the first-act read.
