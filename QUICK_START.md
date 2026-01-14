# 🚀 QUICK START GUIDE FOR INSTRUCTORS

This guide will get you up and running in 15 minutes!

---

## ⚡ Fast Setup (3 Steps)

### Step 1: Host the Repository (2 minutes)

**Option A - Using GitHub:**
```bash
# 1. Create a new repository on GitHub (public or private)
# 2. In this directory, run:
git remote add origin https://github.com/YOUR-USERNAME/atlantis-mission.git
git branch -M master
git push -u origin --all
```

**Option B - Using GitLab:**
```bash
# Same process, just use GitLab URL
git remote add origin https://gitlab.com/YOUR-USERNAME/atlantis-mission.git
git push -u origin --all
```

**Option C - Local Git Server:**
```bash
# If you have a local git server
git remote add origin user@your-server:/path/to/repos/atlantis-mission.git
git push -u origin --all
```

---

### Step 2: Share with Students (1 minute)

Give students this URL:
```
https://github.com/YOUR-USERNAME/atlantis-mission
```

And these instructions:
```bash
git clone <repository-url>
cd atlantis-mission
cat README.md
```

---

### Step 3: Prepare Environment (5-10 minutes)

**Test the full workflow yourself:**

```bash
# Clone fresh copy (simulate student experience)
cd /tmp
git clone <your-repo-url> test-run
cd test-run

# Phase 1 - Linux
cd excavation-site/temple-entrance
ls -la
cat .hidden_inscription.txt
cd ../hall-of-records
grep "POSEIDON" *.txt
cd ../sealed-chamber
chmod +x unlock_chamber.sh
./unlock_chamber.sh TRIDENT_OF_THE_DEEP

# Phase 2 - Git
cd ../../..
git checkout temple-of-frontend
ls
git checkout ruins-of-backend
ls
git checkout vault-of-database
ls
git checkout master
git merge temple-of-frontend
git merge ruins-of-backend
git merge vault-of-database
# Resolve conflict in docker-compose.yml
git add docker-compose.yml
git commit -m "Resolved merge conflict"

# Phase 3 - Docker
docker-compose build
docker-compose up -d
docker-compose ps
# Open http://localhost:8080
```

---

## 📋 Pre-Workshop Checklist

**1 Week Before:**
- [ ] Repository created and tested
- [ ] Share repository URL with students
- [ ] Send Docker installation instructions
- [ ] Confirm venue has internet access

**1 Day Before:**
- [ ] Test repository access
- [ ] Prepare troubleshooting cheat sheet
- [ ] Download Docker images locally (backup)
- [ ] Test on similar environment to students

**Day Of:**
- [ ] Have repository URL ready
- [ ] Have backup plans (USB with files)
- [ ] Test internet connection
- [ ] Have INSTRUCTOR_GUIDE.md open

---

## 🎯 During Workshop - Quick Reference

### Phase 1 Solution (Linux)
```bash
cd excavation-site/temple-entrance
ls -la
cat .hidden_inscription.txt
cd ../hall-of-records
grep "POSEIDON" scroll_founding.txt
cd ../sealed-chamber
chmod +x unlock_chamber.sh
./unlock_chamber.sh TRIDENT_OF_THE_DEEP
```

### Phase 2 Solution (Git)
```bash
cd ../../..  # Back to project root
git branch -a  # See all branches
git checkout temple-of-frontend
git checkout ruins-of-backend
git checkout vault-of-database
git checkout master

git merge temple-of-frontend  # No conflict
git merge ruins-of-backend     # No conflict
git merge vault-of-database    # CONFLICT!

# Edit docker-compose.yml - keep the complete version
# Remove conflict markers
git add docker-compose.yml
git commit -m "Resolved merge conflict"
```

### Phase 3 Solution (Docker)
```bash
docker-compose build
docker-compose up -d
docker-compose ps
# Visit http://localhost:8080
```

---

## 🆘 Emergency Troubleshooting

### Student's Docker won't start:
```bash
# Quick fix: Use pre-built images
# Modify docker-compose.yml temporarily:
# Change: build: ./frontend
# To: image: nginx:alpine

# Or provide direct access to running instance
```

### Student's Git is broken:
```bash
# Nuclear option: Fresh start
cd ..
rm -rf atlantis-mission
git clone <repo-url>
cd atlantis-mission
```

### Internet is down:
```bash
# Backup plan: USB drive with repository
# Pre-pull Docker images:
docker pull nginx:alpine
docker pull python:3.11-slim
docker pull postgres:15-alpine
```

---

## 📊 Typical Timeline

**3-Hour Workshop:**
- 0:00-0:15: Intro & setup
- 0:15-0:50: Phase 1 (Linux)
- 0:50-1:30: Phase 2 (Git)
- 1:30-2:10: Phase 3 (Docker)
- 2:10-2:30: Q&A & wrap-up

**6-Hour Workshop:**
- Add 15-min breaks between phases
- More time for exploration
- Add bonus challenges
- Group discussions

---

## 🎓 Success Metrics

**Workshop is successful if:**
- ✅ 80%+ students complete Phase 1
- ✅ 70%+ students complete Phase 2
- ✅ 60%+ students see Atlantis running

**Students leave knowing:**
- ✅ Basic Linux navigation
- ✅ Git branching and merging
- ✅ Docker containerization
- ✅ Practical DevOps workflow

---

## 💬 Key Talking Points

**Opening:**
"Today you're not just learning commands - you're going on an adventure. You'll restore a lost civilization using the same tools professional developers use every day."

**During Phase 1:**
"In the real world, you'll often need to navigate servers, find files, and adjust permissions. This is exactly what system administrators do."

**During Phase 2:**
"Git branches let teams work in parallel. Merge conflicts happen when two people edit the same thing - and you just learned to resolve them!"

**During Phase 3:**
"Docker containers power Netflix, Spotify, and thousands of companies. You just deployed a multi-container application like a professional DevOps engineer!"

**Closing:**
"You came in as students. You leave as Digital Archaeologists - with real DevOps skills. This same workflow is used in companies worldwide."

---

## 📁 Files Overview

```
atlantis-project/
├── README.md                          # Main mission briefing
├── INSTRUCTOR_GUIDE.md               # Detailed teaching guide
├── QUICK_START.md                    # This file
├── PHASE_3_INSTRUCTIONS.md           # Docker instructions
├── docker-compose.yml                # Container orchestration
├── excavation-site/
│   ├── README.md                     # Phase 1 instructions
│   ├── temple-entrance/
│   │   ├── welcome.txt
│   │   └── .hidden_inscription.txt
│   ├── hall-of-records/
│   │   ├── scroll_ocean.txt
│   │   ├── scroll_architecture.txt
│   │   └── scroll_founding.txt       # Contains the password
│   └── sealed-chamber/
│       └── unlock_chamber.sh         # Phase 1 completion script
├── frontend/                         # (in branch: temple-of-frontend)
│   ├── Dockerfile
│   ├── README.md
│   └── public/
│       └── index.html
├── backend/                          # (in branch: ruins-of-backend)
│   ├── Dockerfile
│   ├── README.md
│   ├── app.py
│   └── requirements.txt
└── database/                         # (in branch: vault-of-database)
    ├── README.md
    └── init.sql
```

---

## 🎯 Next Steps

1. **Test everything** - do a complete run-through
2. **Customize if needed** - adjust difficulty, add/remove puzzles
3. **Share repository** - get it to your students
4. **Have fun!** - This is meant to be engaging

---

## 📞 Support

If you encounter issues:
1. Check INSTRUCTOR_GUIDE.md for detailed troubleshooting
2. Review the complete walkthrough
3. Test in a clean environment

---

## ✨ Tips for Success

1. **Let students struggle a bit** - that's where learning happens
2. **Encourage collaboration** - pair programming works great
3. **Celebrate wins** - completing each phase is an achievement
4. **Be enthusiastic** - your energy is contagious
5. **Have backup plans** - technology can fail

---

**You're ready to go! Good luck, and may your students enjoy their archaeological adventure! 🏛️**
