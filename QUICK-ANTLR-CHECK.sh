#!/bin/bash
# Quick ANTLR Verification Script

echo "=========================================="
echo "ANTLR Status Check"
echo "=========================================="
echo ""

cd "$(dirname "$0")"

echo "Running parser..."
OUTPUT=$(node src/integrated-parser.js copybook/COSMATRX.cpy 2>&1 | head -12)

echo "$OUTPUT"
echo ""
echo "=========================================="

if echo "$OUTPUT" | grep -q "✅ ANTLR Parser: AVAILABLE"; then
    echo "✅ ANTLR IS RUNNING!"
    echo ""
    echo "Evidence:"
    echo "- Status message shows 'AVAILABLE'"

    if echo "$OUTPUT" | grep -q "line.*mismatched"; then
        echo "- Grammar-based parsing errors present"
        echo "- These errors only come from ANTLR"
    fi

elif echo "$OUTPUT" | grep -q "⚠️  ANTLR Parser: NOT AVAILABLE"; then
    echo "❌ ANTLR IS NOT RUNNING"
    echo ""
    echo "Using regex fallback instead."
    echo "To enable ANTLR: npm run generate"
else
    echo "⚠️  UNABLE TO DETERMINE"
fi

echo "=========================================="
