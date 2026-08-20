@echo off
echo ============================================
echo  Push portfolio to GitHub (Nareshdhori)
echo.
echo BEFORE running this:
echo 1. Sign in to https://github.com/Nareshdhori
echo 2. Create a NEW public repo named: naresh-dhori-portfolio
echo    - Do NOT add README, .gitignore, or license
echo 3. Then run this script again
echo.
pause

cd /d "%~dp0"
git status
echo.
git remote remove origin 2>nul
git remote add origin https://github.com/Nareshdhori/naresh-dhori-portfolio.git
echo Pushing to GitHub...
git push -u origin main

if %ERRORLEVEL% EQU 0 (
  echo.
  echo SUCCESS!
  echo Enable GitHub Pages:
  echo   Settings - Pages - Branch: main - folder: /(root)
  echo.
  echo Your site will be live at:
  echo   https://nareshdhori.github.io/naresh-dhori-portfolio/
) else (
  echo.
  echo PUSH FAILED. Common fixes:
  echo 1. Create the repo first on GitHub (see step 2 above)
  echo 2. Sign in when browser opens for GitHub login
  echo 3. Use Personal Access Token if password login fails
  echo    GitHub - Settings - Developer settings - Personal access tokens
)

pause
