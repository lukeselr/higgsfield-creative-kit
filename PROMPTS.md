# Quick-Reference Starter Prompts

Drop one of these into Claude Code after the kit is installed. Each one is
self-contained — Claude reads the named template, fills in placeholders from
context, and runs the right Higgsfield model.

## Image starters

- *"Generate a cinematic founder portrait using `selrai-founder-portrait.md`. Subject: me, holding [your product]. Lock seed 42 so I can reuse the look."*
- *"Three product hero variants of [your product] using `selrai-product-hero.md`. Same composition, three different lighting setups."*
- *"Behind-the-scenes shot of my workshop / studio / kitchen using `selrai-behind-the-scenes.md`. Photodump style, candid."*
- *"Before / after pair using `selrai-before-after-pair.md` — left frame: chaotic desk, right frame: clean automated workflow."*
- *"Social carousel cover for an Instagram post about [your topic] using `selrai-social-carousel-cover.md`. 1:1 square, scroll-stopper."*
- *"Team group shot using `selrai-team-group-shot.md` — six people, Cinema Studio look."*

## Video starters

- *"8-second ASMR scroll-stopper for [your product] using `selrai-asmr-scroll-stopper.md`. Vertical 9:16, TikTok format."*
- *"UGC talking-head ad for [your product] using `selrai-ugc-talking-head.md`. Dialogue: '[your hook line]'. My Soul ID as the speaker."*
- *"Click-to-Ad on [your product URL] using `selrai-click-to-ad-product.md`."*
- *"Sora 2 Trends Luxury template for [your product] using `selrai-sora2-trend-template.md`."*
- *"Cinema Studio narrative shot of [your scene] using `selrai-cinema-studio-narrative.md`. ARRI Alexa look, 35mm lens."*
- *"Draw-to-Video — insert [your product] into this image and animate using `selrai-draw-to-video-product.md`."*
- *"Recast my Soul ID into [reference video URL] using `selrai-recast-character-swap.md`."*

## Workflow starters

- *"Train my Soul ID — walk me through `docs/soul-id-workflow.md` step by step."*
- *"Show me the prompt cookbook — `docs/cookbook.md`."*
- *"How do I pair Higgsfield outputs with my carousel generator? See `docs/pairing-with-other-skills.md`."*

## Iteration patterns

- *"More like that, but warmer lighting."* → Claude reuses the seed, changes one variable.
- *"Take that prompt and run it through Sora 2 instead of Veo."* → Claude swaps model, keeps the rest.
- *"Generate a 5-image series with the same Soul ID, three different outfits, two different settings."* → Claude builds a matrix.
