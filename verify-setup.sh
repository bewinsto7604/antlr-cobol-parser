#!/bin/bash
# ANTLR Setup Verification Script

echo "=========================================="
echo "ANTLR Parser Setup Verification"
echo "=========================================="
echo ""

# Check 1: Java installed
echo "Checking for Java..."
if command -v java &> /dev/null; then
    echo "✅ Java is installed"
    java -version 2>&1 | head -n 1
else
    echo "❌ Java is NOT installed"
    echo "   Download from: https://adoptium.net/temurin/releases/"
    echo ""
    exit 1
fi
echo ""

# Check 2: ANTLR JAR exists
echo "Checking for ANTLR JAR..."
if [ -f "antlr-4.13.1-complete.jar" ]; then
    echo "✅ ANTLR JAR exists ($(du -h antlr-4.13.1-complete.jar | cut -f1))"
else
    echo "❌ ANTLR JAR not found"
    echo "   Run: curl -L -o antlr-4.13.1-complete.jar https://www.antlr.org/download/antlr-4.13.1-complete.jar"
    exit 1
fi
echo ""

# Check 3: Grammar file exists
echo "Checking for grammar file..."
if [ -f "grammar/Cobol85.g4" ]; then
    echo "✅ Grammar file exists"
else
    echo "❌ Grammar file not found"
    exit 1
fi
echo ""

# Check 4: Generated files exist
echo "Checking for generated parser files..."
if [ -f "src/generated/Cobol85Lexer.js" ] && [ -f "src/generated/Cobol85Parser.js" ]; then
    echo "✅ Parser files already generated"
    echo "   Files found:"
    ls -1 src/generated/*.js 2>/dev/null | sed 's/^/   - /'
else
    echo "⚠️  Parser files not generated yet"
    echo "   Generating now..."

    java -jar antlr-4.13.1-complete.jar -Dlanguage=JavaScript -o src/generated grammar/Cobol85.g4

    if [ $? -eq 0 ]; then
        echo "✅ Parser generated successfully!"
        echo "   Files created:"
        ls -1 src/generated/*.js 2>/dev/null | sed 's/^/   - /'
    else
        echo "❌ Parser generation failed"
        exit 1
    fi
fi
echo ""

# Check 5: Test the parser
echo "Testing integrated parser..."
if [ -f "copybook/COSMATRX.cpy" ]; then
    echo "Running: node src/integrated-parser.js copybook/COSMATRX.cpy"
    echo ""
    echo "----------------------------------------"
    node src/integrated-parser.js copybook/COSMATRX.cpy 2>&1 | head -n 30
    echo "----------------------------------------"
    echo ""
    echo "✅ Parser test complete"
    echo "   Check output above for: '✅ ANTLR Parser: AVAILABLE'"
else
    echo "⚠️  Test copybook not found: copybook/COSMATRX.cpy"
fi

echo ""
echo "=========================================="
echo "Verification Complete!"
echo "=========================================="
