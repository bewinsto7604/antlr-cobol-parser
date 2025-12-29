# Java PATH Solution

## Problem
You're getting: `'java' is not recognized as an internal or external command`

This means Java is not in your system PATH.

## ✅ Solution 1: Use npm (Easiest - Already Fixed!)

I've updated `package.json` to use the full Java path. Just run:

```bash
cd C:\Users\samue\antlr-cobol-parser
npm run generate
```

**This works now without setting PATH!**

## Solution 2: Set PATH Temporarily

Run this batch file before using Java commands:

```cmd
cd C:\Users\samue\antlr-cobol-parser
set-java-path.bat
```

Then you can use:
```bash
java -version
npm run generate
```

**Note:** PATH is only set for that terminal session.

## Solution 3: Set PATH Permanently (Windows)

**Steps:**
1. Press `Windows + R`
2. Type: `sysdm.cpl` and press Enter
3. Go to "Advanced" tab
4. Click "Environment Variables"
5. Under "User variables", select "Path" and click "Edit"
6. Click "New" and add:
   ```
   C:\Users\samue\Downloads\OpenJDK21U-jre_x64_windows_hotspot_21.0.9_10\jdk-21.0.9+10-jre\bin
   ```
7. Click "OK" on all dialogs
8. **Restart your terminal**

After this, `java` command will work everywhere.

## Solution 4: Move Java to Better Location (Recommended)

Instead of leaving Java in Downloads, move it:

```cmd
mkdir C:\Java
move "C:\Users\samue\Downloads\OpenJDK21U-jre_x64_windows_hotspot_21.0.9_10\jdk-21.0.9+10-jre" "C:\Java\jdk-21"
```

Then add to PATH:
```
C:\Java\jdk-21\bin
```

## Current Status

✅ **npm run generate** - Works now (uses full path)
❌ **java -version** - Won't work until PATH is set
✅ **ANTLR parser** - Already working!

## Recommendation

**Just use `npm run generate`** - I've already configured it to work without PATH.

No need to set PATH unless you want to use Java for other projects.
