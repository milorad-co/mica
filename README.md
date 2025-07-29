# GNU Useless Manipulation Program
A very bad art program, but still better than [DuckDood's readST](https://github.com/DuckDood/readST).<br>
GUMP is a... "minimalist" art program that has very few features.
# How to Install
First, install [the Milorad Application Installer](https://github.com/milorad-co/milorad-installer).<br>
Then, run the command `sudo milorad install gump` if you are on Linux or `milorad install gump` **while Git Bash is administrator** on Windows.
# Known Issues
The Linux and development versions are slightly outdated. This will be fixed in the next patch.
# Patches (For Windows and Linux)
Beta 0 - GUMP was created.
# MIF (Milorad Image Format)
MIF is an file type that attempts to be better than ST, its predecessor. ST is a very simple image type whose syntax is described [here](https://github.com/DuckDood/readST).<br>
MIFs aimed to be better than STs, while still being easy to understand. Here's how they work.
## Example MIF
```
[mif]
main="!MIF![3]{3}"
1="ÿ  ÿ  ÿ  "
2=" ÿ  ÿ  ÿ "
3="  ÿ  ÿ  ÿ"
```
## Breakdown
`[mif]` is a declaration that shows that this is a MIF file.<br>
`main=` indicates that this is the configuration of the MIF.<br>
`!MIF!` is another declaration.<br>
`[3]` is the width of the image.<br>
`{3}` is the height of the image.<br>
`1=`, `2=`, and `3=` are the line numbers.<br>
`ÿ  ` ect. is the ascii code that corresponds to the colour of the pixel. ÿ is extended ascii character 255. <space> is the ascii character 32. RGB colour 255 32 32 is a slightly off red pixel. The ascii characters <control codes> (0-31), " (34), = 61, and <delete> (127) cannot be used.
