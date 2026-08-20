# Naresh Dhori — Personal Portfolio

Senior DevOps Engineer portfolio site — Azure, AWS, Kubernetes, Terraform, CI/CD, and DevSecOps.

## Live site

**Public URL:** https://nareshdhori.github.io/naresh-dhori-portfolio/

**Repository:** https://github.com/Nareshdhori/naresh-dhori-portfolio

> If the live URL shows 404, enable GitHub Pages:  
> **Settings → Pages → Branch: `main` → Folder: `/ (root)` → Save**  
> Wait 2–3 minutes, then refresh.

---

## Contact

- **Email:** nareshdhori76@gmail.com
- **GitHub:** https://github.com/Nareshdhori
- **LinkedIn:** https://linkedin.com/in/naresh-dhori-504727266

---

## Run locally

```powershell
cd C:\Users\NareshDhori\Projects\naresh-dhori-portfolio
python -m http.server 8888
```

Open http://localhost:8888

---

## Update and publish changes

```powershell
cd C:\Users\NareshDhori\Projects\naresh-dhori-portfolio
git add .
git commit -m "Update portfolio content"
git push
```

GitHub Pages refreshes in 1–2 minutes after each push.

---

## Custom domain (optional)

1. Buy a domain (e.g. `nareshdhori.com` or `nareshdhori.dev`)
2. In GitHub: **Settings → Pages → Custom domain** → enter your domain → **Save**
3. Add DNS records at your domain provider:

```
Type    Name    Value
A       @       185.199.108.153
A       @       185.199.109.153
A       @       185.199.110.153
A       @       185.199.111.153
CNAME   www     Nareshdhori.github.io
```

4. Enable **Enforce HTTPS** in GitHub Pages settings

---

## Project files

| File | Purpose |
|------|---------|
| `index.html` | Main page |
| `styles.css` | Styling |
| `script.js` | Interactions |
| `.nojekyll` | GitHub Pages support |
| `deploy-iis.ps1` | Optional local IIS deployment (Windows) |
| `push-to-github.bat` | Push helper script |
