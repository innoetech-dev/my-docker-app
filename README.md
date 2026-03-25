# my-docker-app

A React + Vite application built for the **Docker & Containerization** hands-on exercise.

## What this is

This app is a Docker-themed container dashboard — a fun, professional homepage that demonstrates what a real containerized application looks like from the inside.

## Running without Docker

```bash
npm install
npm run dev       # dev server at http://localhost:5173
npm run build     # production build → dist/
npx serve -s dist -l 3000
```

## Running with Docker

```bash
# Build the image
docker build -t my-docker-app .

# Run the container
docker run -d -p 8080:80 --name react-app my-docker-app

# Open in browser
# http://<your-vm-ip>:8080
```

## The 4 Steps (with and without Docker)

| Step | Without Docker | With Docker |
|------|---------------|-------------|
| 1. Get the code | `git clone ...` | `docker build .` (context = code) |
| 2. Download dependencies | `npm install` | `RUN npm install` (in Dockerfile) |
| 3. Run the code | `npm run build` | `RUN npm run build` (in Dockerfile) |
| 4. Expose to a port | `serve -l 3000` | `docker run -p 8080:80` |

## Tech stack

- **React 18** + **Vite 5**
- **JetBrains Mono** + **Syne** fonts
- No external UI libraries — pure CSS
