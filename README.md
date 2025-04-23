# VS Code in Docker – Multi-Language Dev Environment

Run VS Code entirely in your browser with support for Java, Python, JavaScript, or all combined.

---

## 🔧 How to Use

### 🚀 Run Java Dev Environment

```bash
docker compose -f compose/docker-compose.java.yml build
docker compose -f compose/docker-compose.java.yml up -d
```

Visit: http://localhost:8443  
Password: `secret`

---

### 🐍 Run Python Dev Environment

```bash
docker compose -f compose/docker-compose.python.yml build
docker compose -f compose/docker-compose.python.yml up -d
```

Visit: http://localhost:8555  
Password: `secret`

---

### 🟨 Run JavaScript Dev Environment

```bash
docker compose -f compose/docker-compose.javascript.yml build
docker compose -f compose/docker-compose.javascript.yml up -d
```

Visit: http://localhost:8666  
Password: `secret`

---

### 💥 Run Full-Stack Dev Environment

```bash
docker compose -f compose/docker-compose.full.yml build
docker compose -f compose/docker-compose.full.yml up -d
```

Visit: http://localhost:8777  
Password: `secret`

---

## 🛑 Stop Environment

```bash
docker compose -f compose/docker-compose.<variant>.yml down
```

Replace `<variant>` with: `java`, `python`, `javascript`, or `full`.
