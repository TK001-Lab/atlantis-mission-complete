# 🆘 STUDENT HELP GUIDE

Stuck? No problem! This guide has hints for each phase.

---

## 🧭 General Tips

1. **Read error messages carefully** - they usually tell you what's wrong
2. **Read the instructions** - all the clues you need are in the files
3. **Use TAB completion** - press TAB to autocomplete file/directory names
4. **Ask for help** - but try for at least 5 minutes first!

---

## 📚 Command Quick Reference

### Linux Commands (Phase 1)

| Command | What it does | Example |
|---------|--------------|---------|
| `pwd` | Show current directory | `pwd` |
| `ls` | List files | `ls` |
| `ls -la` | List ALL files (including hidden) | `ls -la` |
| `cd dirname` | Change directory | `cd temple-entrance` |
| `cd ..` | Go up one directory | `cd ..` |
| `cat filename` | Show file contents | `cat welcome.txt` |
| `grep "text" filename` | Search for text in file | `grep "POSEIDON" *.txt` |
| `chmod +x filename` | Make file executable | `chmod +x script.sh` |
| `./filename` | Run a script | `./unlock_chamber.sh` |

### Git Commands (Phase 2)

| Command | What it does | Example |
|---------|--------------|---------|
| `git branch -a` | Show all branches | `git branch -a` |
| `git checkout branchname` | Switch to a branch | `git checkout temple-of-frontend` |
| `git merge branchname` | Merge branch into current | `git merge ruins-of-backend` |
| `git status` | See what's changed | `git status` |
| `git log --oneline` | See commit history | `git log --oneline --graph --all` |
| `git add filename` | Stage a file | `git add docker-compose.yml` |
| `git commit -m "msg"` | Commit changes | `git commit -m "Fixed conflict"` |

### Docker Commands (Phase 3)

| Command | What it does | Example |
|---------|--------------|---------|
| `docker --version` | Check Docker is installed | `docker --version` |
| `docker-compose build` | Build all containers | `docker-compose build` |
| `docker-compose up` | Start containers | `docker-compose up -d` |
| `docker-compose ps` | List running containers | `docker-compose ps` |
| `docker-compose logs` | View container logs | `docker-compose logs frontend` |
| `docker-compose down` | Stop all containers | `docker-compose down` |
| `docker-compose restart` | Restart containers | `docker-compose restart` |

---

## 🔍 Phase 1 Hints

### Can't find the hidden inscription?

**Problem:** Running `ls` shows nothing new  
**Solution:** Hidden files in Linux start with a dot (.). Use `ls -la` to see them.

---

### Found the inscription but can't find POSEIDON?

**Problem:** Don't know where to look  
**Solution:** The inscription tells you to go to the `hall-of-records` directory. Use `cd ../hall-of-records` to get there.

---

### Can't find which file has POSEIDON?

**Problem:** Don't want to read all three scrolls  
**Solution:** Use grep to search all files at once:
```bash
grep "POSEIDON" *.txt
```

---

### Can't run the unlock script?

**Problem:** Getting "Permission denied"  
**Solution:** The script doesn't have execute permission. Add it:
```bash
chmod +x unlock_chamber.sh
```

---

### Script says wrong password?

**Problem:** Script runs but rejects password  
**Solution:** Make sure you're using the EXACT password from the scroll, with correct capitalization and underscores. Format: `./unlock_chamber.sh TRIDENT_OF_THE_DEEP`

---

## 🌿 Phase 2 Hints

### Can't see the branches?

**Problem:** `git branch` only shows master  
**Solution:** Use `git branch -a` to see ALL branches (including remote ones).

---

### Can't checkout a branch?

**Problem:** Error message when trying to checkout  
**Solution:** Make sure you're typing the branch name correctly. Copy-paste from the list:
- `temple-of-frontend`
- `ruins-of-backend`
- `vault-of-database`

---

### What's a merge conflict?

**Problem:** Scary looking error with <<<<<<< and >>>>>>>  
**Solution:** This is normal! It means two branches changed the same file. You need to:
1. Open the conflicted file in a text editor
2. Look for the conflict markers:
   ```
   <<<<<<< HEAD
   (your version)
   =======
   (their version)
   >>>>>>> branch-name
   ```
3. Decide which version to keep (or combine them)
4. Delete the conflict markers
5. Save the file
6. `git add <filename>`
7. `git commit -m "Resolved conflict"`

---

### Which version should I keep in the conflict?

**Problem:** Two different versions of docker-compose.yml  
**Solution:** Keep the LONGER, more complete version (the one from vault-of-database branch). It has all three services (frontend, backend, database). Delete the placeholder version.

---

### Merge says "Already up to date"?

**Problem:** Merge doesn't do anything  
**Solution:** You might have already merged that branch. Check `git log` to see if the merge already happened.

---

## 🐳 Phase 3 Hints

### Docker commands not found?

**Problem:** `docker: command not found`  
**Solution:** Docker isn't installed. Install Docker Desktop (Mac/Windows) or Docker Engine (Linux).

---

### Can't connect to Docker daemon?

**Problem:** `Cannot connect to the Docker daemon`  
**Solution:** 
- **Mac/Windows:** Make sure Docker Desktop is running
- **Linux:** Start the Docker service: `sudo systemctl start docker`

---

### Build is taking forever?

**Problem:** `docker-compose build` seems stuck  
**Solution:** This is normal for the first time! Docker is downloading base images. Can take 5-10 minutes depending on internet speed. Subsequent builds are much faster.

---

### Port already in use?

**Problem:** Error: "port is already allocated"  
**Solution:** Something else is using port 8080 or 5000. Either:
1. Stop the other service
2. Or change the port in docker-compose.yml:
   ```yaml
   ports:
     - "8081:80"  # Changed from 8080 to 8081
   ```

---

### Container keeps exiting?

**Problem:** `docker-compose ps` shows status as "Exited"  
**Solution:** Check the logs to see what went wrong:
```bash
docker-compose logs <service-name>
# Example: docker-compose logs backend
```

---

### Can't access localhost:8080?

**Problem:** Browser says "can't connect"  
**Solution:**
1. Check containers are running: `docker-compose ps`
2. All services should say "Up"
3. Try `http://127.0.0.1:8080` instead
4. Check firewall settings

---

## 🆘 When All Else Fails

### Nuclear Option - Start Fresh

If things are really broken:

```bash
# Stop all containers
docker-compose down

# Go back one directory
cd ..

# Delete everything
rm -rf atlantis-mission  # or atlantis-project

# Clone fresh copy
git clone <repository-url>
cd atlantis-mission

# Start over from Phase 1
```

---

## 💡 Common Mistakes

1. **Not reading error messages** - They tell you what's wrong!
2. **Wrong directory** - Use `pwd` to see where you are
3. **Typos** - Linux is case-sensitive: `File.txt` ≠ `file.txt`
4. **Skipping steps** - Follow instructions in order
5. **Forgetting to save files** - Always save after editing!

---

## 🎯 Progress Checklist

Use this to track your progress:

### Phase 1: Linux
- [ ] Found hidden inscription
- [ ] Located correct scroll in hall-of-records
- [ ] Found the sacred password
- [ ] Made script executable (chmod)
- [ ] Successfully ran unlock script
- [ ] PHASE_2_INSTRUCTIONS.md appeared

### Phase 2: Git
- [ ] Viewed all branches
- [ ] Checked out each fragment branch
- [ ] Returned to master
- [ ] Merged temple-of-frontend (no conflict)
- [ ] Merged ruins-of-backend (no conflict)
- [ ] Merged vault-of-database (conflict!)
- [ ] Resolved merge conflict successfully
- [ ] Committed the resolution

### Phase 3: Docker
- [ ] Verified Docker is installed
- [ ] Successfully ran `docker-compose build`
- [ ] Successfully ran `docker-compose up -d`
- [ ] All three containers showing as "Up"
- [ ] Can access http://localhost:8080
- [ ] See the Atlantis Control Center!

---

## 🎓 Remember

**Learning is a process!** Everyone gets stuck sometimes. The important thing is:
1. Try to solve it yourself first
2. Read the error messages
3. Check this help guide
4. Ask for help if needed

**You've got this! 🏛️**

---

## 📖 Want to Learn More?

After completing this mission, check out:
- **Linux:** [linuxjourney.com](https://linuxjourney.com)
- **Git:** [learngitbranching.js.org](https://learngitbranching.js.org)
- **Docker:** [labs.play-with-docker.com](https://labs.play-with-docker.com)

---

*"The only way to do great work is to love what you do."* - Steve Jobs  
*"Every expert was once a beginner."* - Ancient Atlantean Proverb
