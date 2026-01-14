# 🏗️ Phase 3: The Restoration Chamber

Congratulations! You've successfully merged all the fragments of Atlantis!

Now comes the final phase: **Building and deploying the containers**.

---

## 🎯 Your Mission

You now have all three components:
- ✅ Frontend (User Interface)
- ✅ Backend (API & Logic)
- ✅ Database (Data Storage)

It's time to bring Atlantis to life using Docker!

---

## 📋 Prerequisites

Make sure Docker and Docker Compose are installed:
```bash
docker --version
docker-compose --version
```

If not installed, follow Docker's installation guide for your system.

---

## 🔧 Step-by-Step Restoration

### Step 1: Verify All Fragments Are Present

Check that you have all three directories:
```bash
ls -la
```

You should see:
- `frontend/`
- `backend/`
- `database/`
- `docker-compose.yml`

### Step 2: Build the Containers

Build all the Docker images:
```bash
docker-compose build
```

This process will:
- Build the frontend container (nginx with HTML)
- Build the backend container (Python Flask API)
- Pull the PostgreSQL database image

**This may take a few minutes...**

### Step 3: Launch Atlantis!

Start all containers:
```bash
docker-compose up
```

Or run in detached mode (background):
```bash
docker-compose up -d
```

### Step 4: Verify Systems Are Online

Check running containers:
```bash
docker-compose ps
```

All three services should show as "Up" or "running".

### Step 5: Access the Restored City

Open your web browser and navigate to:
```
http://localhost:8080
```

🎉 **You should see the Atlantis Control Center!**

---

## 🔍 Additional Commands

**View logs:**
```bash
docker-compose logs
docker-compose logs frontend
docker-compose logs backend
docker-compose logs database
```

**Stop all services:**
```bash
docker-compose down
```

**Restart services:**
```bash
docker-compose restart
```

**Access the backend API directly:**
```
http://localhost:5000
http://localhost:5000/api/status
http://localhost:5000/api/systems
```

**Access database (if needed):**
```bash
docker-compose exec database psql -U atlantis -d atlantis_db
```

---

## 🎊 Mission Complete!

If you can see the Atlantis Control Center in your browser and interact with it, **YOU'VE DONE IT!**

You have successfully:
1. ✅ Mastered Linux commands and file permissions
2. ✅ Navigated Git branches and merged code
3. ✅ Resolved merge conflicts (ancient curses!)
4. ✅ Built and deployed multi-container Docker applications
5. ✅ Restored the Lost City of Atlantis!

---

## 📚 What You've Learned

**Linux Skills:**
- File navigation (cd, ls, cat)
- Finding hidden files (ls -la)
- Text searching (grep)
- File permissions (chmod)
- Script execution

**Git Skills:**
- Branch creation and navigation
- Checking out branches
- Merging branches
- Resolving merge conflicts
- Viewing commit history

**Docker Skills:**
- Understanding Dockerfiles
- Building images
- Using docker-compose
- Multi-container orchestration
- Container networking
- Volume management

---

## 🏆 Congratulations, Digital Archaeologist!

*"You have proven yourself worthy. The knowledge of Atlantis is now yours to keep and share."*

---

### 📬 Feedback

What did you think of this learning experience?
What would you like to explore next?

---

**Mission Status**: ✅ COMPLETE  
**Certification**: Master Digital Archaeologist  
**Achievement Unlocked**: Restorer of Atlantis
