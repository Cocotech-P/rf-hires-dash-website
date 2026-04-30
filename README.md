# RF HiRes Dash Website — Setup & Deployment

This is a **Hugo static website** for RF HiRes Dash. Easy to modify, deploy to Netlify, and use your own domain.

## Quick Start

### 1. Local Setup

```bash
# Install Hugo (if not already installed)
# macOS: brew install hugo
# Linux: sudo apt install hugo
# Windows: choco install hugo-extended

# Clone this repo
git clone https://github.com/your-org/rf-hires-dash-website.git
cd rf-hires-dash-website

# Run local server
hugo server

# Open browser: http://localhost:1313
```

### 2. Edit Content

All content is in **`content/`** as markdown files:

```
content/
  ├── _index.md          (Home page)
  ├── features.md        (Features page)
  ├── about.md           (About page)
  ├── contact.md         (Contact page)
  ├── docs.md            (Documentation)
  └── posts/             (Blog posts)
```

**To edit a page:**
1. Open the `.md` file in any text editor
2. Edit the content (everything below the `---`)
3. Save
4. Browser auto-refreshes (Hugo watches for changes)

**To add a page:**
1. Create a new `.md` file in `content/`
2. Add front matter:
   ```
   ---
   title: "My New Page"
   description: "Page description"
   draft: false
   ---
   ```
3. Add content
4. Save
5. Hugo auto-adds it to the menu (based on weight)

### 3. Customize

**Change site config:**
- Edit `config.toml`
- Update `baseURL`, `title`, `params.description`, etc.
- Update social links and email

**Change colors/styling:**
- Edit `layouts/_default/baseof.html` (the `<style>` section)
- Change `#2E5090` (primary blue) and `#4472C4` (secondary blue) to your colors
- The theme is all in this one HTML file — easy to modify

**Change menu items:**
- Edit `config.toml` `[[menu.main]]` section
- Add/remove links and reorder by changing `weight`

### 4. Deploy to Netlify (Free)

**One-time setup:**

1. Push this repo to GitHub
   ```bash
   git add .
   git commit -m "Initial commit: Hugo website"
   git push origin main
   ```

2. Go to https://netlify.com
3. Click **"New site from Git"**
4. Connect GitHub, select this repo
5. Build settings:
   - Build command: `hugo`
   - Publish directory: `public`
6. Click **"Deploy"**

**That's it!** Netlify auto-builds and deploys on every push to `main`.

### 5. Add Your Domain Name

**Once you own a domain (e.g., `rf-hires-dash.com`):**

1. Netlify dashboard → Your site → **Site settings**
2. **Domain management** → **Add custom domain**
3. Enter your domain name
4. Follow DNS setup instructions (point your domain to Netlify)
5. Netlify auto-provisions HTTPS certificate

Takes about 10 minutes for DNS to propagate.

---

## File Structure

```
rf-hires-dash-website/
├── config.toml                      # Site configuration
├── content/                         # Content (all markdown files)
│   ├── _index.md                   # Home page
│   ├── features.md, about.md, etc.  # Other pages
│   └── posts/                      # Blog posts (optional)
├── layouts/                         # HTML templates
│   └── _default/
│       ├── baseof.html             # Main layout (edit colors here)
│       ├── single.html             # Single page template
│       └── list.html               # List template (for posts)
├── static/                         # Static files (images, CSS, etc.)
├── themes/                         # Themes (optional, not used here)
├── README.md                       # This file
└── .gitignore                      # Git ignore file
```

---

## Common Tasks

### Add a Blog Post

```bash
hugo new posts/my-post.md
```

This creates `content/posts/my-post.md`. Edit it and save.

### Change the Home Page

Edit `content/_index.md` — everything below the `---` is home page content.

### Update Contact Information

Edit `config.toml`:
```toml
[params]
  email = "your-email@example.com"
  github = "https://github.com/your-org/rf-hires-dash"
```

### Add a Page to the Menu

1. Create a new `.md` file in `content/`
2. Add `[[menu.main]]` entry in `config.toml`
3. Set `weight` to control order

### Change Colors

1. Open `layouts/_default/baseof.html`
2. Find the `<style>` section
3. Replace:
   - `#2E5090` with your primary color
   - `#4472C4` with your secondary color
4. Save and Netlify auto-redeploys

---

## Content Tips

### Write Good Markdown

```markdown
# Heading 1
## Heading 2
### Heading 3

**Bold text** and *italic text*

- Bullet list
- Another item

1. Numbered list
2. Another item

[Link text](https://example.com)

> Blockquote

`inline code`

```code block```
```

### Front Matter Fields

```markdown
---
title: "Page Title"                    # Required
description: "SEO description"         # Optional, shows in search
draft: false                           # Set to true to hide page
---
```

### Link to Internal Pages

```markdown
[About](/about/)
[Features](/features/)
[User Manual](/docs/#user-manual)
```

---

## Troubleshooting

### Page doesn't appear after saving

- Check `draft: false` in front matter
- Check spelling of file name and paths
- Restart `hugo server`

### Changes don't show up

- Hard refresh browser (Ctrl+Shift+R)
- Check browser console for errors (F12)

### Site looks broken after deploy

- Check `baseURL` in `config.toml` matches your domain
- Check all links in pages (no typos)
- Netlify build log shows errors (check it)

### Want to revert a change

```bash
git log --oneline
git revert <commit-hash>
git push
```

Netlify auto-redeploys.

---

## Next Steps

1. ✅ Fork/clone this repo
2. ✅ Edit pages in `content/`
3. ✅ Push to GitHub
4. ✅ Connect to Netlify
5. ✅ Add your domain
6. ✅ Share your site!

---

## Support

- **Hugo Docs**: https://gohugo.io/documentation/
- **Netlify Docs**: https://docs.netlify.com/
- **Markdown Guide**: https://www.markdownguide.org/

---

**Built with ❤️ for RF HiRes Dash**
