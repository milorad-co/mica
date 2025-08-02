# GNU Useless Manipulation Program
A very bad art program, but still better than [DuckDood's readST](https://github.com/DuckDood/readST).<br>
GUMP is a... "minimalist" art program that has very few features.
# How to Install
Download one of the releases - the .zip is for Windows, .AppImage for Debian-based Linux.<br>
The compiled stable builds of GUMP can also be found [here](https://milorad-co.github.io/GUMP.htm). They can also be installed in the following ways:<br>
Windows: Run the command `Invoke-WebRequest -Uri "https://milorad-co.github.io/Downloads/GUMP.zip" -OutFile "$env:UserProfile\Downloads\GUMP.zip"` in Windows PowerShell.<br>
Linux: In your terminal, run the command `wget "https://milorad-co.github.io/Downloads/GUMP.AppImage"`.
# Known Issues
1. On the Linux version, files are saved as `FILENAME[newline].EXTENSION`, and GUMP attempts to load them as `FILENAME.EXTENSION[newline]`, preventing GUMP from finding them.
2. On the Linux version, backspace does not work.
