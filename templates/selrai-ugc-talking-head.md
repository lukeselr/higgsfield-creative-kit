# selrai-ugc-talking-head

**Use when**: you want a UGC-style talking-head ad — your face (or your Soul
ID), camera-direct delivery, 15-30 seconds, scroll-stopping. Most-converting
ad format on Meta and TikTok in 2026.

## Recommended model

- **UGC Builder** (Higgsfield) — 40+ motion templates baked in.
- Fallback: **Higgsfield Speak** for any model + custom audio you supply.

## Prompt — visual

```text
Vertical 9:16 medium close-up of <your-character> seated in a sun-lit kitchen
or home office, light handheld feel with subtle micro-shake, 35mm narrative
lens, natural skin tones, soft window key light, mid-energy delivery, eye
contact with camera, slight head movements, hand gestures entering frame
from below.
```

## Prompt — dialogue (audio)

The MCSLA `Action` field is your hook line. Keep it under 12 words.

```text
"<your-hook-line>"
```

Examples:
- *"I tried this for 30 days and didn't expect what happened."*
- *"This is the only thing I let on my desk during work hours."*
- *"If you have a small business, please don't make this one mistake."*

## Parameters

- **Aspect ratio**: `9:16` (TikTok / Reels / Shorts)
- **Duration**: 15-30 seconds (Higgsfield UGC builder default is 15s)
- **Voice**: your Soul ID's trained voice if available, or pick a UGC voice
  preset that matches your delivery style
- **Quality**: `high`
- **Camera shake**: `subtle` — too much reads as fake, too little reads as
  staged

## What to fill in

- `<your-character>` — Soul ID name (face consistency is critical for UGC)
- `<your-hook-line>` — your opening line. See `docs/cookbook.md` § "UGC hook
  formulas" for 12 proven patterns.
- Replace the kitchen with your actual location for credibility.

## Variations to run

The point of UGC is volume. Generate 5-10 variants of every winning hook:

1. Same hook line, different facial expression intensity (calm → emphatic)
2. Same line, different location (kitchen → garage → walk-and-talk)
3. Same line, slight head-angle change (camera-left → centre → camera-right)
4. Hook variants — A/B test 3 different opening lines with the same visual

## Pairing

- Pair the visual with `direct-response-copy` skill for the hook line — it
  knows the conversion patterns.
- Run final captions through `humanizer` skill so they don't read AI.
- Pipe winning variants into `meta-ads-mcp-setup` for direct upload to ad sets.

## Why these choices

UGC works because of **subtle imperfection** — slight handheld feel + natural
skin tones + sun-lit window key light. Any prompt with "professional",
"polished", "studio", or "perfect lighting" kills the UGC look. The 35mm lens
matters: 50mm and tighter starts to read as staged.
