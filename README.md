<!-- AI assisted development -->
# Naresh Dhori — Personal Portfolio

Your site files are ready. **Nothing is connected to Upshop** — this is local/personal only until you deploy.

## ✅ Site works locally

Open `index.html` in a browser, or run:

```powershell
cd C:\Users\NareshDhori\Projects\naresh-dhori-portfolio
python -m http.server 8888
```

Visit http://localhost:8888

---

## Best alternatives (pick one)

### Option 1 — GitHub Pages (recommended, permanent & free)

**Your public HTTPS URL will be:** `https://nareshdhori.github.io/naresh-dhori-portfolio/`

Repo: [github.com/Nareshdhori/naresh-dhori-portfolio](https://github.com/Nareshdhori/naresh-dhori-portfolio)

1. Create a **personal** repo on GitHub: [github.com/new](https://github.com/new)
   - Name: `naresh-dhori-portfolio`
   - Public
   - Do **not** add README/license (repo should be empty)
2. Push from your machine:

```powershell
cd C:\Users\NareshDhori\Projects\naresh-dhori-portfolio
git remote add origin https://github.com/Nareshdhori/naresh-dhori-portfolio.git
git push -u origin main
```

3. On GitHub: **Settings → Pages → Build and deployment**
   - Source: **Deploy from a branch**
   - Branch: **main** / **/(root)**
4. Wait 2–3 minutes, then open: `https://nareshdhori.github.io/naresh-dhori-portfolio/`

---

### Option 2 — Cloudflare Pages (drag & drop, no git)

1. Go to [Cloudflare Pages](https://dash.cloudflare.com/?to=/:account/pages/new)
2. Choose **Upload assets**
3. Drag the folder: `C:\Users\NareshDhori\Projects\naresh-dhori-portfolio`
4. Project name: `naresh-dhori-devops`
5. Deploy → you get: `https://naresh-dhori-devops.pages.dev`

---

### Option 3 — Vercel (fast, free)

1. Go to [vercel.com/new](https://vercel.com/new)
2. Sign in with GitHub or email
3. Choose **Deploy** → drag the portfolio folder
4. You get a URL like: `https://naresh-dhori-devops.vercel.app`

---

## Why Netlify failed

`naresh-dhori-devops.netlify.app` shows "Site not found" because **no files were uploaded yet**. Either deploy using Netlify Drop, or use one of the options above instead.

---

## Files

| File | Purpose |
|------|---------|
| `index.html` | Main page |
| `styles.css` | Styling |
| `script.js` | Interactions |
| `.nojekyll` | GitHub Pages support |
| `portfolio-deploy.zip` | Ready-to-upload package |
