<div align="center">

# 🤖 Gemini CLI SubAgents Library (3,500+ Experts)

**The ultimate, community-driven collection of specialized, production-ready AI SubAgents for the [Gemini CLI](https://geminicli.com/).**

[![Gemini CLI](https://img.shields.io/badge/Gemini%20CLI-Ready-blue?style=for-the-badge&logo=google-gemini)](https://geminicli.com)
[![Agents](https://img.shields.io/badge/Agents-3500%2B-success?style=for-the-badge)](#)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

Transform your terminal into a powerhouse of autonomous experts. From reverse-engineering malware to orchestrating massive Kubernetes clusters, this repository contains over 3,500 highly specialized subagents ready to execute your commands.

[Explore Agents](#categories) • [How to Install](#installation) • [How to Use](#usage) • [Contribute](#contributing)

</div>

---

## 🌟 Why this repository?

The Gemini CLI allows you to delegate tasks to autonomous **SubAgents**. But creating the perfect system prompt, toolset, and model configuration for every edge case takes time.

This repository solves that. We have systematically generated and curated over 3,500 unique subagents across 30+ industries and technical domains. 

**Features:**
- 🎯 **Hyper-Specialized:** No generic "coding assistants." You get a `graphql-federation-architect`, a `zero-trust-network-architect`, an `ethereum-gas-optimizer`, and 3,500 more.
- 🧠 **Smart Model Selection:** Simple tasks use the lightning-fast `gemini-3-flash`, while complex architectural reasoning defaults to `gemini-3.1-pro`.
- 🛠️ **Tool-Ready:** Agents come pre-configured with the exact CLI tools they need to read files, grep codebases, and run bash commands.
- 📁 **Plug & Play:** Drop them into your `.gemini/agents/` folder and start delegating immediately.

---

## 🗂️ Categories

Our agents are organized into domain-specific folders:

| Tech & Engineering | Data & AI | Business & Ops | Verticals & Niche |
| :--- | :--- | :--- | :--- |
| 💻 **[Code](./.gemini/agents/code)** (250+) | 🤖 **[AI / ML](./.gemini/agents/ai_ml)** (100+) | 📈 **[Business](./.gemini/agents/business)** (100+) | 🏥 **[Healthcare](./.gemini/agents/healthcare)** (100+) |
| 🏗️ **[Architecture](./.gemini/agents/architecture)** (100+) | 📊 **[Analytics](./.gemini/agents/analytics)** (100+) | ⚙️ **[Operations](./.gemini/agents/operations)** (100+) | 💰 **[Finance](./.gemini/agents/finance)** (100+) |
| ☁️ **[DevOps](./.gemini/agents/devops)** (100+) | 💾 **[Data](./.gemini/agents/data)** (140+) | 🎨 **[Design](./.gemini/agents/design)** (100+) | 🛒 **[E-commerce](./.gemini/agents/ecommerce)** (100+) |
| 🛡️ **[Security](./.gemini/agents/security)** (100+) | 🔬 **[Research](./.gemini/agents/research)** (100+) | 📢 **[Marketing](./.gemini/agents/marketing)** (100+) | 🎲 **[Gaming](./.gemini/agents/gaming)** (100+) |
| 🔄 **[Automation](./.gemini/agents/automation)** (100+) | 🔗 **[Integration](./.gemini/agents/integration)** (100+) | ✍️ **[Writing](./.gemini/agents/writing)** (110+) | 🎸 **[Niche Hobbies](./.gemini/agents/niche)** (200+) |

*(And many more including Legal, Travel, Real Estate, Automotive, Web, Mobile...)*

---

## 🚀 Installation

### Option 1: Quick Install (Recommended)
Simply clone this repository directly into your Gemini CLI configuration folder:

```bash
# Navigate to your Gemini CLI config directory
cd ~/.gemini

# Clone the repository (it will merge with your existing agents folder)
git clone https://github.com/YOUR_USERNAME/gemini-subagents-library.git temp-agents
cp -r temp-agents/.gemini/agents/* ./agents/
rm -rf temp-agents
```

### Option 2: Manual Cherry-Picking
If you only want specific agents (e.g., just the DevOps and Security ones):
1. Browse the folders in this repo.
2. Download the specific `.md` files you want.
3. Place them in your `~/.gemini/agents/` directory (or `.gemini/agents/` in your local project workspace).

---

## 🎮 Usage

Once installed, the Gemini CLI will automatically detect your new workforce. 

You can interact with them directly from your terminal or pass tasks to them via the main Gemini CLI agent.

**Example 1: Direct Invocation**
```bash
gemini --agent=aws-systems-manager-automator "Write an SSM document to update all our Ubuntu instances"
```

**Example 2: Delegation (from the main agent)**
Just ask Gemini CLI to do something complex, and it will automatically find the right expert:
> *"I need to optimize my Webpack build, it's taking too long. Can you get the frontend-architecture-lead to look at my `webpack.config.js`?"*

---

## 🛠️ Anatomy of a SubAgent

Every agent in this repository is built using the official Gemini CLI format. Here is an example of `kubernetes-cost-optimizer.md`:

```yaml
---
name: kubernetes-cost-optimizer
description: Focus on optimizing K8s resource requests, limits, and autoscaling.
model: gemini-3-flash
tools: [run_shell_command, read_file, grep_search, glob]
temperature: 0.7
max_turns: 10
---
You are a K8s cost expert. Analyze cluster usage and tune autoscaling and resource allocation to reduce waste and improve stability.
```

---

## 🤝 Contributing

With 3,500+ agents, this library is massive, but technology moves fast! We welcome contributions. 

**How to contribute:**
1. Fork the repository.
2. Create a new `.md` file in the appropriate category folder.
3. Ensure it follows the [official subagent YAML frontmatter format](https://geminicli.com/docs/core/subagents/).
4. Submit a Pull Request!

**Tips for a great agent:**
- Be incredibly specific in the `prompt`. (e.g., "You are an expert in Next.js 14 App Router" instead of "You are a web developer").
- Assign the `gemini-3.1-pro` model for agents that need to write complex code or reason deeply. Use `gemini-3-flash` for data extraction, fast formatting, or simple scripts.

---

<div align="center">
  <p>Built with ❤️ by the Gemini CLI Community.</p>
  <p><i>Unleash your AI workforce.</i></p>
</div>
