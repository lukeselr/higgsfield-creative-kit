#!/usr/bin/env bash
# Higgsfield Creative Kit smoke test
# Confirms install landed correctly. Does NOT attempt OAuth or live MCP calls
# (those require user input). The connector skill handles those interactively.

set -e

SKILLS_DIR="$HOME/.claude/skills"
KIT_HOME="$HOME/Higgsfield-Creative-Kit"
FAIL=0

check() {
  if [ -e "$1" ]; then
    echo "  ok    $1"
  else
    echo "  FAIL  $1"
    FAIL=1
  fi
}

echo ""
echo "Higgsfield Creative Kit smoke test"
echo ""

echo "Skills:"
check "$SKILLS_DIR/higgsfield-connector/SKILL.md"
check "$SKILLS_DIR/higgsfield/SKILL.md"
check "$SKILLS_DIR/higgsfield/LICENSE"

echo ""
echo "Kit home:"
check "$KIT_HOME/templates"
check "$KIT_HOME/docs"
check "$KIT_HOME/docs/getting-started.md"
check "$KIT_HOME/docs/cookbook.md"
check "$KIT_HOME/docs/soul-id-workflow.md"
check "$KIT_HOME/docs/full-toolkit-map.md"
check "$KIT_HOME/docs/pairing-with-other-skills.md"

echo ""
echo "Templates (sample):"
check "$KIT_HOME/templates/selrai-founder-portrait.md"
check "$KIT_HOME/templates/selrai-product-hero.md"
check "$KIT_HOME/templates/selrai-ugc-talking-head.md"

echo ""
echo "Claude Code CLI:"
if command -v claude >/dev/null 2>&1; then
  echo "  ok    claude command found"
  if claude mcp list 2>/dev/null | grep -qi '^higgsfield'; then
    echo "  ok    higgsfield MCP registered"
  else
    echo "  info  higgsfield MCP not yet registered — connector skill will add it"
  fi
else
  echo "  FAIL  claude command not in PATH"
  FAIL=1
fi

echo ""
if [ "$FAIL" -eq 0 ]; then
  echo "All checks passed. Ask Claude Code to 'connect Higgsfield' to finish setup."
  exit 0
else
  echo "Some checks failed. See above."
  exit 1
fi
