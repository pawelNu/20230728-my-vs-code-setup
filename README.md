# Exporting and importing settings from VS Code

- [Exporting and importing settings from VS Code](#exporting-and-importing-settings-from-vs-code)
  - [Instructions](#instructions)
  - [VS code extensions list](#vs-code-extensions-list)
  - [Change path to saved images files in Markdown All in One extension](#change-path-to-saved-images-files-in-markdown-all-in-one-extension)

## Instructions

Link:  
https://bobbyhadz.com/blog/vscode-export-settings-and-extensions#exporting-your-vs-code-settings-and-extensions

Web page in pdf file: [link](Exporting%20Settings%20and%20Extensions%20in%20Visual%20Studio%20Code%20_%20bobbyhadz.pdf)

## VS code extensions list

Run in terminal: `code --list-extensions`

bierner.docs-view
bierner.markdown-mermaid
bpruitt-goddard.mermaid-markdown-syntax-highlighting
ChakrounAnas.turbo-console-log
ClemensPeters.format-json
dbaeumer.vscode-eslint
donjayamanne.githistory
DotJoshJohnson.xml
dsznajder.es7-react-js-snippets
esbenp.prettier-vscode
formulahendry.auto-rename-tag
GrapeCity.gc-excelviewer
Gruntfuggly.todo-tree
hediet.vscode-drawio
inferrinizzard.prettier-sql-vscode
lXSPandora.vscode-styled-components-snippets
mechatroner.rainbow-csv
ms-python.isort
ms-python.python
ms-python.vscode-pylance
ms-toolsai.jupyter
ms-toolsai.jupyter-keymap
ms-toolsai.jupyter-renderers
ms-toolsai.vscode-jupyter-cell-tags
ms-toolsai.vscode-jupyter-slideshow
ms-vscode.powershell
planbcoding.vscode-react-refactor
ritwickdey.LiveServer
streetsidesoftware.code-spell-checker
streetsidesoftware.code-spell-checker-polish
TabNine.tabnine-vscode
team-sapling.sapling
vscode-icons-team.vscode-icons
yzhang.markdown-all-in-one
ZainChen.json
zhucy.project-tree
Zignd.html-css-class-completion

## Change path to saved images files in Markdown All in One extension

Add to `Settings.json`

```json
"markdown.copyFiles.destination": {
    "**/*.md": "images/${fileBasenameNoExtension}/"
}
```
