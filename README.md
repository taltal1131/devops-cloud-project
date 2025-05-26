# 🚀 DevOps Cloud Project (Render Edition)

This project is a simple Node.js + Express API, containerized with Docker and deployed to the cloud using **Render**.

## 📦 Tech Stack

- Node.js + Express
- Docker
- Render (Free Cloud Hosting)

---

## 📁 Project Structure

```
.
├── index.js           # Main Express app
├── package.json       # npm config & start script
├── Dockerfile         # Container build instructions
├── render.yaml        # Render auto-deploy config
└── .gitignore         # Ignored files in version control
```

---

## 🚀 Deployment (Render)

### 1. Prerequisites

- GitHub account
- Render.com account (free)

### 2. One-Time Setup

- Push this project to your GitHub account
- Go to [https://render.com](https://render.com)
- Click **"New Web Service"**
- Connect your GitHub repo
- Configure:

  - **Environment**: Docker
  - **Instance Type**: Free
  - **Start Command**: `npm start` ✅

> Render will auto-build and deploy your app.

---

## ✅ Health Check

You can verify the app is working by visiting:

```
https://<your-app>.onrender.com/health
```

It should return: `OK`

---

## 🧾 Notes

- This project previously used AWS + Terraform – now replaced by Render for simplicity.
- You can add `.env` for secret keys if needed.

---

## 🧠 Author

Made with 💻 by [Your Name]