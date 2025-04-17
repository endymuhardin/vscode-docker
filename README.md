# VS Code in Docker with code-server

This runs a full VS Code experience in your browser using Docker Compose and code-server.

## 🚀 Run

```bash
docker compose up --build -d
```

Visit [http://localhost:8080](http://localhost:8080) in your browser.

Login with password: `secret123` (change it in `docker-compose.yml` or `config.yaml`).

## 🧩 Pre-installed Extensions

- Java Pack (`vscjava.vscode-java-pack`)
- Thunder Client (`rangav.vscode-thunder-client`)
- Cline AI Bot (`saoudrizwan.claude-dev`)
- Roo Code (`roocode.roocode`)

## 🛠 Customize

- Place your code in this folder (it's mounted as `/home/coder/project`).
- Use the Extensions panel to add more extensions.

## 🔒 Secure It

You can hash the password or configure HTTPS. See: [code-server docs](https://coder.com/docs/code-server/latest)