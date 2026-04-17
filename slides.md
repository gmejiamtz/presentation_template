---
author: Gary Mejia
title: reveal.js Presentation Template using Pandoc
subtitle: An alternative presentation format for Google Slides/Microsoft Powerpoint
date: April 28, 2025
---

## What this is

This is meant to be a presentation template/tutorial using Pandoc to generate website presentations using reveal.js. This repo is targeted at users who want to
try a different presentation format to Google Slides or Microsoft Powerpoint. Another use case is hosting presentations publically on the web. One can host a
presentation via GitHub Pages.

---

### What are pandoc and reveal.js

pandoc is document convertion software that can take many file types and convert them to another. This repository is aimed at converting Markdown (.md) to HTML. With
pandoc, a user can easily describe the structure of their presentation and convert it to the apprioriate presentation in HTML.

reveal.js is an HTML framework for creating presentations. It provides a template .css file to style pandoc generated HTML into streamlined presentations.

---

### Installing pandoc and reveal.js

Install pandoc with the following command:

```bash

#On Linux: use your package manager
sudo apt install pandoc

#MacOS: use brew
brew install pandoc
```

Install reveal.js using npm or yarn as follows:

```bash
npm install reveal.js
# or
yarn add reveal.js
```

## Overview of this Repository

This repository hosts all the files required to build this slide deck. Users only need to modify the `slides.md` file with whatever content they want.

---

### What the Makefile does

```
index.html: slides.md
	pandoc -t revealjs -s -o $@ $< \
	-V revealjs-url=https://unpkg.com/reveal.js@4.6.1 \
	--include-in-header=slides.css -V theme=black \
	--slide-level 3

clean:
	rm index.html
```

## Adding Images

To add the image do the following line of code:

```markdown
![Caption](img/logo.png)
```

![Caption](img/logo.png)
