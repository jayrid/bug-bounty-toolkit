# 🐞 Bug Bounty Automation Toolkit

Welcome to my **Bug Bounty Toolkit** — a collection of custom scripts, payloads, and automation designed to streamline reconnaissance and vulnerability discovery.

This repo powers my workflow as I go from **Script Kitty to Pro Hacker** 🐾⚔️ — and it's the same toolkit I use on real-world targets and CTF labs.

---

## 📁 Folder Structure

```
bug-bounty-toolkit/
├── automation/      # Custom bash scripts (e.g., recon.sh)
├── tools/           # Cloned helper tools like SecretFinder, Gf-Patterns
├── scripts/         # Python/Bash helpers in development
├── payloads/        # Custom XSS, SSRF, LFI payloads
├── notes/           # Markdown notes, cheat sheets, bug class writeups
└── .gitignore       # Prevents leaking recon data and logs
```

---

## 🚀 Usage

### Recon Automation

```bash
./automation/recon.sh target.com
```

This script performs:

- Subdomain enumeration with **Subfinder**
- Live host probing via **HTTPx**
- URL collection with **WaybackURLs**
- Vulnerability scanning using **Nuclei**
- Logs all output to timestamped folder and `.log` file

---

## 🧰 Tools Used

| Tool           | Purpose                    |
|----------------|----------------------------|
| Subfinder      | Subdomain enumeration      |
| HTTPx          | Probing live hosts         |
| WaybackURLs    | Collecting archived URLs   |
| Nuclei         | Vulnerability scanning     |
| SecretFinder   | JS secret discovery        |
| FFUF           | Directory brute-forcing    |

> Most tools are installed via `go install`, others are cloned into `tools/`.

---

## 🔒 What’s Not Included

To respect targets and program rules, this repo:
- ❌ Does **not** include any recon output or logs
- ❌ Does **not** push sensitive data (see `.gitignore`)

---

## 📈 Why This Repo Matters

This toolkit:
- Helps me stay efficient during recon and early bug discovery
- Demonstrates my automation skills for future clients, teams, and bounty platforms
- Supports my **content series** on YouTube, Medium, and TikTok

---

## 🧪 Coming Soon

- Markdown report generator
- JS endpoint crawler
- Slack/Discord webhook alerting
- XSS & IDOR scanner modules

---

## 🤝 Connect

I'm actively building in public. Follow my journey:

- 🌐 https://github.com/jayrid
- 📹 https://www.youtube.com/@RidleyCyberTalk
- ✍️ medium.com/@jessemridley

---

## 🛡️ Disclaimer

This project is for **educational and authorized security testing** only. Always follow program scopes, terms of service, and ethical hacking guidelines.
