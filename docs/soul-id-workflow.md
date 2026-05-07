# Soul ID Workflow

A Soul ID is a trained character — a digital twin of you (or anyone you have
rights to) that Higgsfield can drop into any image or video while keeping the
face, build, and presence consistent. Train it once, then generate dozens of
on-brand visuals without re-uploading reference photos.

## Why bother

Without a Soul ID, every generation drifts a little — same prompt, slightly
different face, slightly different proportions. Across 20 outputs the
inconsistency is obvious and amateur-looking. With a trained Soul ID, the
same character carries through every generation, every model, every scene.
This is the single biggest unlock for founder-led content at scale.

## What you need before training

| Need | Quantity | Notes |
|---|---|---|
| **Reference photos of the subject** | 10-50 | 20 is the sweet spot. More is better up to ~30. |
| **Lighting variety** | 3+ different conditions | Natural daylight, indoor lamp, golden hour. |
| **Angle variety** | Multiple | Front, three-quarter, profile, slight up-tilt, slight down-tilt. |
| **Expression variety** | Multiple | Neutral, smiling, considered, mid-laugh. |
| **Outfit variety** | 2-4 different outfits | Helps model separate identity from clothing. |
| **No occlusion** | All photos | Avoid sunglasses, masks, hats covering the face, hands across the face, extreme expressions. |
| **Clean photo quality** | Good lighting, in focus | Phone photos work; blurry photos hurt. |

## The training run itself

```text
Step 1 — open Higgsfield → Characters → Create new Soul ID
Step 2 — name the character (use a short slug, no spaces — e.g. "founder-jane")
Step 3 — upload all reference photos at once
Step 4 — Higgsfield runs the training automatically — typically 5-10 minutes
Step 5 — when training finishes, the character is selectable in any
         workflow that supports Soul ID
```

You don't tune the training parameters yourself. Higgsfield handles it.

## Using the trained Soul ID

Once trained, the character appears in:

- **Soul / Soul Cinema** — image generation with character consistency
- **Cinema Studio Image / Video** — cinema-grade generation with the character
- **UGC Builder** — the character delivers the talking-head ad
- **Recast Studio** — swap the character into existing video while preserving motion
- **Higgsfield Speak** — character delivers any audio you provide
- **Sora 2 Trends** — many trend templates accept a Soul ID

In any prompt, reference the character by the slug you chose:

```text
Cinematic medium close-up of <your-character> seated in a sun-lit kitchen…
```

…where `<your-character>` is replaced by your slug (e.g. `founder-jane`).

## Quality tips

- **Lock seeds across a series.** When you find a Soul ID + lighting + lens
  combo that works, lock the seed and only change one variable at a time.
- **Style strength `0.7-0.85`.** Lower than 0.7 the character drifts. Higher
  than 0.85 the model can't apply your scene/style adequately.
- **Don't combine two Soul IDs in one image.** Multi-character shots work but
  drift more — accept 5-10 generations to land one usable take, or build the
  shot in two passes (one character at a time) and composite externally.
- **Refresh the training every 6 months.** Your real face changes (hair,
  weight, age) — re-train with current photos to keep the Soul ID matching
  who you actually are now.

## Multi-character workflows

For team shots or two-character ads:

1. Train one Soul ID per person.
2. In the prompt, name each: `subject 1: <id-1>, subject 2: <id-2>, both
   <action>`.
3. Use models that support multi-Soul ID (Cinema Studio 3.0+, Soul 2.0).
4. Expect 30-50% generation success rate for multi-character — generate 5x
   what you need, pick the cleanest takes.

## Ethical guardrails

- Only train Soul IDs of people who have given explicit consent.
- Get the consent in writing for team members (a single Slack ack is fine).
- Never train a Soul ID of a public figure, competitor, or anyone you don't
  have a direct relationship with.
- Re-confirm consent before using the Soul ID in any paid ad — what was OK
  for an internal pitch deck may not be OK for a Meta campaign at scale.

## When to retire a Soul ID

- The person leaves the company.
- The visual identity (hair, weight, style) has changed enough that the Soul
  ID no longer matches them — re-train or retire.
- A person revokes consent. Delete the Soul ID and any generated assets they
  appear in.

## Pairing with the kit's templates

Most templates in `templates/selrai-*.md` reference `<your-character>` as a
slot. Once your Soul ID is trained, you fill that slot with your slug and
every template inherits character consistency.
