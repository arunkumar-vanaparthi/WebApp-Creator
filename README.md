# 🌐 WebApp Creator

A simple tool to convert any website into a desktop application using [Nativefier](https://github.com/nativefier/nativefier).  
Built with **PowerShell + Batch** for easy use on Windows systems.

---

## 📂 What's Inside
- `run-webapp.bat` → Launcher script (double-click to run)  
- `create-webapp.ps1` → PowerShell automation script  
- (Optional) `README.md` → Instructions  

---

## 🚀 How to Use

1. **Download**
   - Click the green **Code** button → **Download ZIP**
   - Extract the folder to your PC.

2. **Run**
   - Double-click `run-webapp.bat`.
   - Enter:
     - **Website URL** → e.g. `https://github.com`
     - **App Name** → e.g. `GitHubApp`

3. **Wait**
   - The script will:
     - Check/install **Node.js**
     - Check/install **Nativefier**
     - Build your custom desktop app

4. **Done**
   - Look for your new app in the output folder.
   - Pin it to Start Menu / Taskbar like any normal app.

---

## 🖥 Example

Enter the website URL (example: https://github.com): https://outlook.office.com
Enter the app name (example: GitHubApp): OutlookApp

Creating "OutlookApp" from https://outlook.office.com...
Done! Check the output folder for your new OutlookApp app.


---

## ⚡ Features
- Works on a **fresh Windows PC**
- Auto-installs **Node.js + Nativefier** if missing
- **Removes old build warning** automatically
- Interactive → Just type URL + App name
- No permanent changes to PowerShell execution policy

---

## 📝 Notes
- Internet connection is required the first time (to install Node.js + Nativefier).  
- Works best with **Windows 10 / 11**.  
- If your company blocks installs, run as **Administrator**.  

---


## 📜 License
This project is licensed under the [MIT License](LICENSE). See the LICENSE file for details.

