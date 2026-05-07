#!/usr/bin/env bash
# Higgsfield Creative Kit installer (Mac / Linux)
# Drops the connector skill + vendored prompt skill into ~/.claude/skills/
# Drops templates + docs into ~/Higgsfield-Creative-Kit/
# Idempotent — safe to re-run.

set -e

KIT_ROOT="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DIR="$HOME/.claude/skills"
KIT_HOME="$HOME/Higgsfield-Creative-Kit"

echo ""
echo "Higgsfield Creative Kit installer"
echo "  source: $KIT_ROOT"
echo "  skills: $SKILLS_DIR"
echo "  kit home: $KIT_HOME"
echo ""

mkdir -p "$SKILLS_DIR" "$KIT_HOME"

# 1. Connector skill (autonomous OAuth installer)
echo "Installing higgsfield-connector skill..."
rm -rf "$SKILLS_DIR/higgsfield-connector"
cp -R "$KIT_ROOT/skills/higgsfield-connector" "$SKILLS_DIR/higgsfield-connector"

# 2. Vendored prompt skill (OSideMedia, MIT)
echo "Installing higgsfield prompt skill (vendored from OSideMedia, MIT)..."
rm -rf "$SKILLS_DIR/higgsfield"
cp -R "$KIT_ROOT/skills/higgsfield" "$SKILLS_DIR/higgsfield"

# 3. Templates + docs (drop into ~/Higgsfield-Creative-Kit/)
echo "Installing templates + docs to $KIT_HOME..."
mkdir -p "$KIT_HOME/templates" "$KIT_HOME/docs"
cp -R "$KIT_ROOT/templates/." "$KIT_HOME/templates/"
cp -R "$KIT_ROOT/docs/." "$KIT_HOME/docs/"
cp "$KIT_ROOT/README.md" "$KIT_HOME/" 2>/dev/null || true
cp "$KIT_ROOT/PROMPTS.md" "$KIT_HOME/" 2>/dev/null || true
cp "$KIT_ROOT/NOTICE" "$KIT_HOME/" 2>/dev/null || true

# 4. Permissions
find "$SKILLS_DIR/higgsfield" -name "*.sh" -exec chmod +x {} \; 2>/dev/null || true
find "$SKILLS_DIR/higgsfield" -name "*.py" -exec chmod +x {} \; 2>/dev/null || true

echo ""
echo "Done. Two skills installed, templates + docs in $KIT_HOME."
echo ""
echo "Next: ask Claude Code to 'connect Higgsfield' and the connector skill will run."
echo ""
