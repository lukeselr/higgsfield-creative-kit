# Higgsfield Full Toolkit Map

Everything Higgsfield gives you — from the MCP-callable tools to the 50+ one-click Apps to the Chrome extension. This is the "what can I actually do?" reference.

## Layer 1 — MCP tools (callable from Claude Code)

Once the connector is installed and you've signed in, Claude Code can call these
directly. Tool names are discovered at runtime; the surface is roughly:

| Capability | What it does | How you'd ask Claude |
|---|---|---|
| **List models** | Returns the 30+ available models (Soul, Sora 2, Veo 3.1, Kling, Seedance, Nano Banana, etc.) | *"List the Higgsfield models I can use"* |
| **Generate image** | Single-image generation across any image model | *"Generate a cinematic founder portrait using selrai-founder-portrait.md"* |
| **Generate video** | Video generation across any video model | *"Make me an 8-second ASMR scroll-stopper for [product]"* |
| **Generate talking-head** | Image + audio → speaking character video | *"UGC talking-head ad with my Soul ID saying [hook line]"* |
| **Train Soul ID character** | Upload reference photos, train a consistent avatar | *"Train a Soul ID for [name] from these 20 photos"* |
| **List / update / delete characters** | Manage your Soul ID library | *"Show me my trained Soul IDs"* |
| **Get generation status** | Check on a long-running video job | *"How's the Sora 2 generation going?"* |
| **Cancel job** | Stop a job mid-render | *"Cancel that last video"* |
| **Upload reference image** | Push a reference into Higgsfield's library | *"Upload this product photo to use as a reference"* |
| **Search motion presets** | Find a motion template by description | *"Find a Higgsfield motion preset for slow product reveal"* |
| **Get prompt guide** | In-context prompting tips | *"Show me Higgsfield's official prompt guide"* |
| **Extract style from image** | Analyse an image and return a style descriptor | *"Extract the visual style from this reference"* |
| **Usage stats** | How much credit you've burned | *"How many credits have I used this month?"* |

The exact tool names are exposed under the `mcp__higgsfield__*` namespace in
Claude Code after OAuth completes — Claude discovers them automatically.

## Layer 2 — Higgsfield Apps (50+ one-click workflows)

Apps are pre-built workflows on higgsfield.ai that combine a model + prompt + settings into one click. No prompt writing — upload your input and go. The full catalog lives in the bundled prompt skill at `~/.claude/skills/higgsfield/skills/higgsfield-apps/SKILL.md`. Top picks:

### Content & Social
- **AI Influencer Studio** — consistent AI character for series content
- **Vibe Motion** — chat-based video generation
- **Transitions** — seamless cut between any two shots
- **Shots** — multiple cinematic angles of one subject
- **Zooms** — dramatic zoom effects
- **Style Snap** — apply a visual style to any image
- **Chameleon** — match colour/style of one image to another

### Product & Commercial
- **Click to Ad** — product URL → finished video ad
- **Packshot** — professional product photography
- **Giant Product** — product at epic scale
- **Macro Scene** / **Macroshot Product** — extreme close-up product showcase
- **Billboard Ad** — your product on a billboard
- **Graffiti Ad**, **Truck Ad**, **Volcano Ad**, **Fridge Ad**, **Kick Ad** — themed product ad treatments

### Character & Face
- **Face Swap** / **Video Face Swap** — swap faces in image or video
- **Recast** / **Character Swap 2.0** — swap entire character preserving motion
- **Commercial Faces** — generate diverse faces for ads
- **Skin Enhancer** — natural skin texture refinement
- **Angles 2.0** — any camera angle from one image

### Lifestyle & Style
- **Behind the Scenes** — BTS filming aesthetic
- **Urban Cuts** — street photography aesthetic
- **AI Stylist** / **Outfit Swap** / **Outfit Shot** — wardrobe play
- **Renaissance**, **Comic Book**, **Mugshot**, **Japanese Show**, **Rap God** — aesthetic transformations

### Animation & Effects
- **3D Render** / **3D Figure** / **3D Rotation** — 3D treatments
- **Bullet Time Scene** — Matrix-style frozen moment

How to invoke an app from Claude Code: *"Use the Click to Ad app on this product URL: <url>"* — Claude routes through the prompt skill and calls the right MCP tool.

## Layer 3 — Higgsfield Studios (full workspaces on higgsfield.ai)

These are full UIs on the website, not single-tool calls. Useful when you want a richer interactive flow:

| Studio | Best for | URL |
|---|---|---|
| **Cinema Studio 2.5 / 3.0 / 3.5** | Film-grade pipeline, 70+ camera presets, ARRI/Panavision emulation, Soul Cast AI actors, native stereo audio | higgsfield.ai/cinema |
| **Lipsync Studio** | Make any face speak any audio | higgsfield.ai/lipsync |
| **Sketch-to-Video** | Rough sketch → animated video | higgsfield.ai/sketch |
| **Higgsfield Speak** | Standalone voice + audio dub | higgsfield.ai (Speak workflow) |
| **Higgsfield Audio** | Music, SFX, ambient layers | higgsfield.ai/audio |
| **Click-to-Ad Studio** | Product URL → finished ad | higgsfield.ai/click-to-ad |
| **Sora 2 Trends Studio** | Trend templates (Luxury, TikTok, ASMR, Sport) | higgsfield.ai/trends |
| **Photodump Studio** | iPhone-aesthetic candid stills | higgsfield.ai/photodump |

You can keep using these directly in the browser even after wiring up the MCP — the MCP is for programmatic use, the studios are for hands-on creation.

## Layer 4 — Higgsfield Assist (GPT-5 copilot)

A chat copilot that lives at [higgsfield.ai/chat](https://higgsfield.ai/chat). Use it when you want to brainstorm or iterate inside Higgsfield's own UI rather than from Claude Code.

Best for:
- *"What's the cheapest model that can do <thing>?"* — credit optimisation
- *"Which app should I use for <use case>?"* — workflow routing
- *"Suggest 5 prompt variants for this product"* — ideation
- Plan-tier selection guidance

The bundled prompt skill at `~/.claude/skills/higgsfield/skills/higgsfield-assist/` documents how to use Assist effectively.

## Layer 5 — Higgsfield Chrome extension (reverse prompting)

Right-click any image you see online → "Send to Higgsfield" → the model recreates it with your Soul ID. Get it from [higgsfield.ai/blog/Try-the-New-Image-Reference-Tool-Browser-Extension](https://higgsfield.ai/blog/Try-the-New-Image-Reference-Tool-Browser-Extension).

Best workflow:
1. Browse Pinterest, Instagram, Behance, Are.na — anywhere you find a look you like
2. Right-click any image → Send to Higgsfield
3. Higgsfield drops it into a Soul / Soul Cinema generation pre-loaded with your character
4. One click and you have a brand-ready version of that exact look

This is the fastest way to build a moodboard-driven image series.

## Layer 6 — iOS / mobile

Higgsfield has a mobile app for on-the-go capture and quick generation. Pair with Soul ID for character-consistent mobile content.

## How everything fits together

```text
                        Higgsfield platform
                                │
        ┌───────────────────────┼───────────────────────┐
        │                       │                       │
   MCP server               higgsfield.ai           Chrome ext
   (Claude Code)            (browser studios)       (reverse prompt)
        │                       │                       │
   Programmatic           Hands-on creation        Recreate looks
   generation             + 50+ Apps               from web
        │
   Templates +
   Cookbook +
   Soul ID
```

For most workshop attendees: spend the first hour driving the MCP from Claude Code with this kit's templates. After 1-2 sessions you'll know which studios you want to open directly for hands-on work.

## When to use what

| You want to… | Use… |
|---|---|
| Make your first piece in 5 minutes | One of the 15 templates → Claude → MCP |
| Iterate on prompts in chat | Higgsfield Assist (chat at higgsfield.ai/chat) |
| Recreate a specific look you saw online | Chrome extension |
| Fine-tune lighting / camera framing visually | Cinema Studio 3.5 in the browser |
| Talking-head ad with your face | UGC Builder app or selrai-ugc-talking-head template |
| Product video from a URL | Click-to-Ad app or selrai-click-to-ad-product template |
| Trend-jacking for TikTok/Reels | Sora 2 Trends app or selrai-sora2-trend-template |
| Train an avatar for series content | Soul ID workflow → docs/soul-id-workflow.md |
| Generate 20 ad variants overnight | Batch via Claude Code MCP calls |
| Audio for a video you generated | Higgsfield Speak / Higgsfield Audio in browser |
