#!/bin/bash
# Generate AGENT INDEX table from agent .mdt frontmatter
# Used by install.sh to embed index into GEMINI.md

AGENTS_DIR="${1:-src/agents}"

echo "| Agent | Tags | Skills |"
echo "|-------|------|--------|"

for agent_file in "$AGENTS_DIR"/*.mdt; do
    [ -f "$agent_file" ] || continue
    
    name=""
    tags=""
    skills=""
    
    # Parse frontmatter (between --- lines)
    in_frontmatter=0
    while IFS= read -r line; do
        case "$line" in
            "---")
                if [ $in_frontmatter -eq 0 ]; then
                    in_frontmatter=1
                else
                    break
                fi
                ;;
            *)
                if [ $in_frontmatter -eq 1 ]; then
                    key="${line%%:*}"
                    val="${line#*: }"
                    case "$key" in
                        name) name="$val" ;;
                        tags) tags="$val" ;;
                        skills) skills="$val" ;;
                    esac
                fi
                ;;
        esac
    done < "$agent_file"
    
    [ -n "$name" ] && echo "| $name | $tags | $skills |"
done
