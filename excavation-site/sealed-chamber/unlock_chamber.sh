#!/bin/bash

# Ancient Chamber Unlocking Mechanism
# This script validates the sacred password

CORRECT_PASSWORD="TRIDENT_OF_THE_DEEP"

echo "════════════════════════════════════════════════════════"
echo "🚪 SEALED CHAMBER ACTIVATION SEQUENCE 🚪"
echo "════════════════════════════════════════════════════════"
echo ""

if [ $# -eq 0 ]; then
    echo "❌ ERROR: No password provided!"
    echo ""
    echo "Usage: ./unlock_chamber.sh <PASSWORD>"
    echo ""
    echo "Hint: The password was revealed in the Scroll of the Founding."
    echo "      (Check the hall-of-records directory)"
    exit 1
fi

if [ "$1" == "$CORRECT_PASSWORD" ]; then
    echo "✅ PASSWORD ACCEPTED!"
    echo ""
    echo "The chamber rumbles... ancient mechanisms activate..."
    echo "The seal breaks! The chamber opens!"
    echo ""
    echo "════════════════════════════════════════════════════════"
    echo "🗺️  THE FRAGMENT MAP REVEALED! 🗺️"
    echo "════════════════════════════════════════════════════════"
    echo ""
    echo "The scattered fragments of Atlantis are located in"
    echo "different Git branches:"
    echo ""
    echo "  📍 Branch: temple-of-frontend"
    echo "  📍 Branch: ruins-of-backend"
    echo "  📍 Branch: vault-of-database"
    echo ""
    echo "════════════════════════════════════════════════════════"
    echo "✅ PHASE 1 COMPLETE!"
    echo "════════════════════════════════════════════════════════"
    echo ""
    echo "🎯 NEXT MISSION: Phase 2 - The Fragment Hunt"
    echo ""
    echo "Instructions:"
    echo "1. Return to the main project directory"
    echo "2. Check 'git branch -a' to see all branches"
    echo "3. Read the PHASE_2_INSTRUCTIONS.md file"
    echo ""
    echo "Good luck, Archaeologist!"
    
    # Create the Phase 2 instructions file
    cat > ../PHASE_2_INSTRUCTIONS.md << 'EOF'
# 🧩 Phase 2: The Fragment Hunt

Congratulations on completing Phase 1! You've proven your Linux mastery.

Now begins the true challenge: locating and assembling the scattered fragments of Atlantis.

---

## 🗺️ The Fragment Map

The Fragment Map reveals three locations (Git branches) where pieces of Atlantis are hidden:

1. **temple-of-frontend** - Contains the user interface components
2. **ruins-of-backend** - Contains the application logic and API
3. **vault-of-database** - Contains the database configuration

---

## 🎯 Your Mission

### Task 1: Explore the Branches

First, see all available branches:
```bash
git branch -a
```

### Task 2: Visit Each Fragment Location

Check out each branch and examine what it contains:
```bash
git checkout temple-of-frontend
# Look around, see what files are here
ls -la

git checkout ruins-of-backend
# Examine these files too
ls -la

git checkout vault-of-database
# Check this one as well
ls -la
```

### Task 3: Merge the Fragments

Return to the master/main branch and merge all fragments:
```bash
git checkout master  # or 'main' depending on your setup

# Merge each fragment
git merge temple-of-frontend
git merge ruins-of-backend
git merge vault-of-database
```

⚠️ **WARNING**: You may encounter "ANCIENT CURSES" (merge conflicts)!

If you see merge conflicts, don't panic! This is part of the challenge.
- Open the conflicted files
- Look for markers like `<<<<<<<`, `=======`, `>>>>>>>`
- Choose which version to keep (or combine them)
- Remove the conflict markers
- Save the file
- Run: `git add <filename>`
- Run: `git commit -m "Resolved ancient curse"`

---

## ✅ Completion Criteria

When all fragments are successfully merged, you'll have all the pieces needed for Phase 3!

Check your progress:
```bash
git log --oneline --graph --all
```

---

**Status**: 🟡 IN PROGRESS  
**Next Phase**: The Restoration Chamber (Docker) - LOCKED until Phase 2 complete

---

Good luck assembling the fragments, Archaeologist!
EOF
    
    echo "📄 PHASE_2_INSTRUCTIONS.md has been created in excavation-site/"
    
else
    echo "❌ INCORRECT PASSWORD!"
    echo ""
    echo "The chamber remains sealed."
    echo "Hint: Search the Hall of Records for the Scroll of the Founding."
    echo "      Look for the sacred code within."
    exit 1
fi
