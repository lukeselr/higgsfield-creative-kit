# selrai-click-to-ad-product

**Use when**: you want the fastest possible product video ad — paste a
product URL, get a finished video. Meant for testing volume, not hero pieces.

## Recommended model

- **Click-to-Ad** (Higgsfield) — paste URL, model scrapes the product page
  and auto-generates a 15-30s ad with voiceover.
- Fallback: **Sora 2 Trends** with the product imagery + URL extracted manually.

## Workflow

```text
Step 1 — open Higgsfield → Click-to-Ad workflow
Step 2 — paste <your-product-url>
Step 3 — pick template tone: "high-energy", "calm authority", "story-driven",
         "comedic" — match to your audience
Step 4 — review the 3 auto-generated ad variants Higgsfield produces
Step 5 — pick the strongest, ask the model to regenerate variations of just
         that one (different hooks, different last-frame CTA)
```

## Parameters

- **Aspect ratio**: `9:16` (Meta + TikTok) and `1:1` (versatile)
- **Duration**: 15-30s
- **Voice**: clone your own voice if you've trained one in Higgsfield, or pick
  a voice preset that matches your brand register
- **Quality**: `high`

## What to fill in

- `<your-product-url>` — the live PDP URL. Higgsfield's scraper needs to be
  able to fetch the page, so check it's not gated / behind a paywall.

## Refinement loop

After Higgsfield's first pass, ask:

1. *"Regenerate the opening hook with a stronger pattern interrupt — the
   first 1.5 seconds need to stop scrolling."*
2. *"Tighten the demo middle to 4 seconds — show the product solving the
   problem, not describing the product."*
3. *"Make the CTA frame end on the product with the offer text overlay,
   white type on the product, not as a separate end card."*

## Pairing

- Pair with `direct-response-copy` for the on-screen caption track.
- Pipe finished variants into `meta-ads-mcp-setup` for direct upload to ad
  sets (or LinkedIn / Google).
- Use the 1:1 cut as a story / carousel cover, the 9:16 cut as a Reel.

## When NOT to use

This is a volume tool, not a hero tool. For brand spots, founder pieces,
or anything that needs a Soul ID, use `selrai-cinema-studio-narrative.md`
or `selrai-ugc-talking-head.md` instead.

## Why these choices

Click-to-Ad is the fastest path to "first ad shipped" — non-technical founders
get from URL to playable variant in under 5 minutes. The output quality is
ad-test-grade, not hero-piece-grade. Use it for the iterate-and-test loop
of finding which hook and which angle works, then graduate to a hero-grade
template once you've found a winner.
