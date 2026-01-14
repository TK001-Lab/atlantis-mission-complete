# 📘 INSTRUCTOR GUIDE - Operation: Restore Atlantis

## 🎯 Overview

This is a gamified learning experience that teaches Git, Linux, and Docker through a progressive storyline. Students play as "Digital Archaeologists" who must restore a lost system called Atlantis.

**Duration**: 3-6 hours (depending on student experience level)  
**Difficulty**: Beginner to Intermediate  
**Technologies**: Linux, Git, Docker, Docker Compose

---

## 📦 Setup Instructions for Instructors

### Option 1: Using This Pre-Built Repository

1. **Clone or download this repository**
2. **Host it on your Git server** (GitHub, GitLab, Gitea, etc.)
3. **Give students read-only access** (they should clone, not fork initially)

### Option 2: Setting Up from Scratch

If you want to rebuild this yourself, here's the complete setup:

#### Step 1: Initialize Repository

```bash
mkdir atlantis-project
cd atlantis-project
git init
git config user.email "instructor@atlantis.dev"
git config user.name "Atlantis Instructor"
```

#### Step 2: Create Phase 1 (Linux) Content

```bash
# Create directory structure
mkdir -p excavation-site/temple-entrance
mkdir -p excavation-site/hall-of-records
mkdir -p excavation-site/sealed-chamber

# Create welcome file
cat > excavation-site/temple-entrance/welcome.txt << 'EOF'
[Copy content from the existing welcome.txt]
EOF

# Create hidden inscription
cat > excavation-site/temple-entrance/.hidden_inscription.txt << 'EOF'
[Copy content from existing file]
EOF

# Create scrolls in hall-of-records
[Create all three scroll files]

# Create unlock script
cat > excavation-site/sealed-chamber/unlock_chamber.sh << 'EOF'
[Copy the complete script]
EOF

# Remove execute permission (students must add it)
chmod -x excavation-site/sealed-chamber/unlock_chamber.sh
```

#### Step 3: Create Git Branches

```bash
# Commit base state
git add .
git commit -m "Initial commit: Base excavation site setup"

# Create frontend branch
git checkout -b temple-of-frontend
mkdir -p frontend/public
[Create frontend files]
git add .
git commit -m "Add frontend fragment"

# Create backend branch
git checkout master
git checkout -b ruins-of-backend
mkdir -p backend
[Create backend files]
git add .
git commit -m "Add backend fragment"

# Create database branch
git checkout master
git checkout -b vault-of-database
mkdir -p database
[Create database files]
git add .
git commit -m "Add database fragment"

# Create merge conflict scenario
git checkout master
[Create placeholder docker-compose.yml]
git add docker-compose.yml
git commit -m "Add placeholder docker-compose"

git checkout vault-of-database
[Create complete docker-compose.yml]
git add docker-compose.yml
git commit -m "Add complete docker-compose"

git checkout master
```

#### Step 4: Push to Remote

```bash
git remote add origin <your-git-server-url>
git push -u origin --all
```

---

## 👥 Student Setup

### Prerequisites for Students

Each student needs:
- **Linux environment** (Linux, macOS, or WSL on Windows)
- **Git installed**: `git --version`
- **Docker installed**: `docker --version`
- **Docker Compose installed**: `docker-compose --version`
- **Text editor** (nano, vim, VS Code, etc.)
- **Terminal/Command Line access**

### Student Starting Instructions

Give students these instructions:

```bash
# Clone the repository
git clone <repository-url> atlantis-mission
cd atlantis-mission

# Read the mission briefing
cat README.md

# Begin Phase 1
cd excavation-site
cat README.md
```

---

## 📚 Phase-by-Phase Teaching Guide

### Phase 1: The Excavation Site (Linux)

**Learning Objectives:**
- File navigation (cd, ls)
- Finding hidden files (ls -la)
- Reading files (cat)
- Searching text (grep)
- File permissions (chmod)
- Script execution

**Expected Duration:** 30-60 minutes

**Student Tasks:**
1. Navigate to `temple-entrance/`
2. Find the hidden inscription using `ls -la`
3. Read the inscription with `cat .hidden_inscription.txt`
4. Navigate to `hall-of-records/`
5. Search for "POSEIDON" using `grep "POSEIDON" *.txt`
6. Find the sacred code in `scroll_founding.txt`
7. Navigate to `sealed-chamber/`
8. Add execute permission: `chmod +x unlock_chamber.sh`
9. Run the script: `./unlock_chamber.sh TRIDENT_OF_THE_DEEP`

**Common Issues & Solutions:**

| Issue | Solution |
|-------|----------|
| "Permission denied" when running script | Forgot to chmod +x |
| Can't find hidden file | Didn't use `ls -la` |
| grep returns nothing | Wrong directory or typo |
| Script says wrong password | Typo in password or didn't find the right scroll |

**Teaching Tips:**
- Let students struggle a bit before helping
- Encourage them to read error messages carefully
- Emphasize the importance of `ls -la` vs `ls`
- Explain Unix file permissions (rwx)

---

### Phase 2: The Fragment Hunt (Git)

**Learning Objectives:**
- Understanding Git branches
- Checking out branches
- Viewing commit history
- Merging branches
- Resolving merge conflicts

**Expected Duration:** 45-90 minutes

**Student Tasks:**
1. Read `PHASE_2_INSTRUCTIONS.md` (created after Phase 1 completion)
2. View all branches: `git branch -a`
3. Checkout and explore each branch:
   - `git checkout temple-of-frontend`
   - `git checkout ruins-of-backend`
   - `git checkout vault-of-database`
4. Return to master: `git checkout master`
5. Merge all branches:
   - `git merge temple-of-frontend`
   - `git merge ruins-of-backend`
   - `git merge vault-of-database` (⚠️ MERGE CONFLICT!)
6. Resolve the merge conflict in `docker-compose.yml`
7. Complete the merge

**The Merge Conflict:**

When students merge `vault-of-database`, they'll encounter a conflict in `docker-compose.yml`:

```
<<<<<<< HEAD
version: '3.8'

services:
  placeholder:
    image: alpine:latest
    command: echo "Awaiting fragment assembly..."
=======
version: '3.8'

services:
  frontend:
    build: ./frontend
    ...
>>>>>>> vault-of-database
```

**Students must:**
1. Open `docker-compose.yml` in a text editor
2. Remove the conflict markers (`<<<<<<<`, `=======`, `>>>>>>>`)
3. Keep the complete docker-compose configuration from the database branch
4. Save the file
5. Run: `git add docker-compose.yml`
6. Run: `git commit -m "Resolved merge conflict - Ancient curse lifted!"`

**Common Issues & Solutions:**

| Issue | Solution |
|-------|----------|
| "fatal: Not a git repository" | Not in the right directory |
| "Already up to date" when merging | Already merged that branch |
| Confused by merge conflict | Walk through conflict markers explanation |
| Accidentally kept wrong version | Can redo: `git merge --abort` then try again |

**Teaching Tips:**
- Explain what branches are (parallel universes of code)
- Draw a diagram of the branch structure
- Emphasize that merge conflicts are normal
- Show the visual structure of conflict markers
- Celebrate when they resolve their first conflict!

---

### Phase 3: The Restoration Chamber (Docker)

**Learning Objectives:**
- Understanding Dockerfiles
- Building Docker images
- Using docker-compose
- Multi-container orchestration
- Container networking
- Troubleshooting containers

**Expected Duration:** 45-90 minutes

**Student Tasks:**
1. Read `PHASE_3_INSTRUCTIONS.md`
2. Verify Docker is installed: `docker --version`
3. Verify Docker Compose is installed: `docker-compose --version`
4. Build the images: `docker-compose build`
5. Start the containers: `docker-compose up -d`
6. Check status: `docker-compose ps`
7. Access the application: `http://localhost:8080`
8. Explore the API: `http://localhost:5000/api/status`

**Expected Output:**

```bash
$ docker-compose ps
NAME                    SERVICE      STATUS      PORTS
atlantis-backend-1      backend      running     0.0.0.0:5000->5000/tcp
atlantis-database-1     database     running     0.0.0.0:5432->5432/tcp
atlantis-frontend-1     frontend     running     0.0.0.0:8080->80/tcp
```

**Common Issues & Solutions:**

| Issue | Solution |
|-------|----------|
| Docker not installed | Install Docker Desktop or Docker Engine |
| Port already in use | Stop other services or change ports in docker-compose.yml |
| Build fails | Check internet connection, Docker daemon running |
| Container exits immediately | Check logs: `docker-compose logs <service>` |
| Can't access localhost:8080 | Check firewall, verify container is running |

**Teaching Tips:**
- Explain the concept of containers vs VMs
- Show how docker-compose.yml connects services
- Demonstrate viewing logs for debugging
- Explain the networking between containers
- Show how volumes persist data

---

## 🎓 Learning Outcomes Assessment

### Phase 1 Checklist
- [ ] Student can navigate directories with `cd`
- [ ] Student can list all files including hidden ones
- [ ] Student can search file contents with `grep`
- [ ] Student understands file permissions
- [ ] Student can execute shell scripts

### Phase 2 Checklist
- [ ] Student understands Git branches concept
- [ ] Student can checkout different branches
- [ ] Student can merge branches
- [ ] Student can resolve merge conflicts
- [ ] Student understands commit history

### Phase 3 Checklist
- [ ] Student understands Dockerfile structure
- [ ] Student can build Docker images
- [ ] Student can use docker-compose
- [ ] Student can troubleshoot container issues
- [ ] Student understands multi-container orchestration

---

## 🔧 Customization Ideas

### Make It Harder:
1. **Add more Linux puzzles** (find commands, sed/awk challenges)
2. **More complex merge conflicts** (conflicts in code files)
3. **Add Kubernetes deployment** (Phase 4)
4. **Add CI/CD pipeline** (GitHub Actions, GitLab CI)
5. **Require students to modify code** (add new API endpoints)

### Make It Easier:
1. **Provide command hints at each step**
2. **Create video walkthroughs**
3. **Simplify merge conflicts**
4. **Pre-built Docker images** (skip building)
5. **More frequent checkpoints**

### Different Themes:
- **Space Station Rescue** (same structure, different story)
- **Medieval Castle Siege** (fortifications = containers)
- **Time Travel Mission** (branches = timelines)
- **Heist Mission** (Ocean's 11 style)

---

## 📊 Time Allocation Guidance

**For a 3-hour workshop:**
- Introduction & Setup: 20 minutes
- Phase 1 (Linux): 40 minutes
- Phase 2 (Git): 50 minutes
- Phase 3 (Docker): 50 minutes
- Wrap-up & Discussion: 20 minutes

**For a 6-hour workshop:**
- Can add breaks between phases
- More time for troubleshooting
- Live coding demonstrations
- Group discussions
- Bonus challenges

---

## 💡 Teaching Best Practices

### Before the Workshop:
1. **Test the entire flow yourself** - do it fresh
2. **Prepare a troubleshooting cheat sheet**
3. **Have Docker images pre-pulled** (saves time)
4. **Test on student's typical environment** (Windows/Mac/Linux)
5. **Prepare backup plans** (USB drives with files, local Git server)

### During the Workshop:
1. **Let students discover** - resist urge to give answers immediately
2. **Encourage peer helping** - students learn by teaching
3. **Celebrate victories** - completing each phase is an achievement
4. **Share screens for debugging** - but let them type
5. **Take breaks** - mental fatigue is real

### Common Student Questions:

**Q: "What if I mess up?"**  
A: "That's part of learning! Git and Docker make it easy to start over. Worst case, re-clone the repository."

**Q: "Why are we doing this story thing instead of just learning commands?"**  
A: "Because context helps memory! You'll remember 'lifting ancient curses' better than 'resolving merge conflicts'."

**Q: "Is this how real developers work?"**  
A: "Yes! This simulates a real workflow: exploring codebases, merging code, deploying containers."

---

## 🐛 Troubleshooting Guide

### Git Issues

**Problem: "fatal: not a git repository"**
```bash
# Solution: Navigate to repository root
cd path/to/atlantis-project
```

**Problem: Detached HEAD state**
```bash
# Solution: Return to master
git checkout master
```

**Problem: Can't see remote branches**
```bash
# Solution: Fetch all branches
git fetch --all
```

### Docker Issues

**Problem: "Cannot connect to Docker daemon"**
```bash
# Solution: Start Docker
# On Mac: Open Docker Desktop
# On Linux: sudo systemctl start docker
```

**Problem: Port 8080 already in use**
```bash
# Solution: Change port in docker-compose.yml
# Or stop conflicting service
docker-compose down  # if another Atlantis instance
```

**Problem: Build fails with network error**
```bash
# Solution: Check internet connection
# Or use cached images if available
docker-compose up --no-build
```

### Linux Issues

**Problem: Command not found (grep, cat, etc.)**
```bash
# Solution: Use full paths
/bin/cat file.txt
# Or check if in correct directory
```

**Problem: "Permission denied" reading file**
```bash
# Solution: Check you're in the right directory
# Or file permissions issue (ls -la to check)
```

---

## 📈 Extensions & Advanced Challenges

### Bonus Challenge 1: Add Monitoring
- Add Prometheus and Grafana containers
- Create dashboards for Atlantis metrics

### Bonus Challenge 2: High Availability
- Scale services with `docker-compose up --scale backend=3`
- Add load balancer (nginx)

### Bonus Challenge 3: Security Hardening
- Implement secrets management
- Add SSL/TLS certificates
- Set up firewall rules

### Bonus Challenge 4: CI/CD Pipeline
- Create GitHub Actions workflow
- Auto-deploy on merge to main
- Run tests in containers

---

## 📝 Assessment Rubric

### Beginner Level (Pass)
- [ ] Completes Phase 1 with guidance
- [ ] Successfully merges at least 2 branches
- [ ] Gets containers running with help

### Intermediate Level (Good)
- [ ] Completes all phases independently
- [ ] Resolves merge conflict without help
- [ ] Can explain what each command does

### Advanced Level (Excellent)
- [ ] Completes quickly and helps others
- [ ] Suggests improvements to the setup
- [ ] Can modify code and redeploy
- [ ] Troubleshoots issues independently

---

## 🎉 Conclusion

This gamified learning experience makes DevOps concepts engaging and memorable. Students don't just learn commands - they experience a journey, solve puzzles, and achieve something visible (a working application).

The narrative structure:
- **Reduces anxiety** (it's a game, not a test)
- **Increases engagement** (want to see what happens next)
- **Aids memory** (stories stick better than command lists)
- **Builds confidence** (progressive difficulty)

---

## 📬 Feedback & Iteration

After each workshop:
1. Gather student feedback
2. Note common stumbling blocks
3. Adjust difficulty as needed
4. Update documentation
5. Share improvements

---

## 📚 Additional Resources for Students

**Linux:**
- Linux Command Line Basics course
- explainshell.com (explains any command)

**Git:**
- GitHub's Git tutorial
- learngitbranching.js.org (interactive)

**Docker:**
- Docker's official getting started
- Play with Docker (browser-based practice)

---

**Version:** 1.0  
**Last Updated:** January 2026  
**Author:** Digital Archaeology Institute  
**License:** Educational Use

---

*"The best way to learn is by doing. The best way to remember is through story."*
