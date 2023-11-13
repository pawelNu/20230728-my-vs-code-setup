# Exporting and importing settings from VS Code

-   [Exporting and importing settings from VS Code](#exporting-and-importing-settings-from-vs-code)
    -   [Instructions](#instructions)
    -   [VS code extensions list](#vs-code-extensions-list)
    -   [Change path to saved images files in Markdown All in One extension](#change-path-to-saved-images-files-in-markdown-all-in-one-extension)

## Instructions

Link:  
https://bobbyhadz.com/blog/vscode-export-settings-and-extensions#exporting-your-vs-code-settings-and-extensions

Web page in pdf file: [link](Exporting%20Settings%20and%20Extensions%20in%20Visual%20Studio%20Code%20_%20bobbyhadz.pdf)

## VS code extensions list

Run in terminal: `code --list-extensions`

1. bierner.docs-view
2. bierner.markdown-mermaid
3. bpruitt-goddard.mermaid-markdown-syntax-highlighting
4. ChakrounAnas.turbo-console-log
5. ClemensPeters.format-json
6. dbaeumer.vscode-eslint
7. donjayamanne.githistory
8. DotJoshJohnson.xml
9. dsznajder.es7-react-js-snippets
10. esbenp.prettier-vscode
11. formulahendry.auto-rename-tag
12. GrapeCity.gc-excelviewer
13. Gruntfuggly.todo-tree
14. hediet.vscode-drawio
15. inferrinizzard.prettier-sql-vscode
16. lXSPandora.vscode-styled-components-snippets
17. mechatroner.rainbow-csv
18. ms-python.isort
19. ms-python.python
20. ms-python.vscode-pylance
21. ms-toolsai.jupyter
22. ms-toolsai.jupyter-keymap
23. ms-toolsai.jupyter-renderers
24. ms-toolsai.vscode-jupyter-cell-tags
25. ms-toolsai.vscode-jupyter-slideshow
26. ms-vscode.powershell
27. planbcoding.vscode-react-refactor
28. ritwickdey.LiveServer
29. streetsidesoftware.code-spell-checker
30. streetsidesoftware.code-spell-checker-polish
31. TabNine.tabnine-vscode
32. team-sapling.sapling
33. vscode-icons-team.vscode-icons
34. yzhang.markdown-all-in-one
35. ZainChen.json
36. zhucy.project-tree
37. Zignd.html-css-class-completion

## Change path to saved images files in Markdown All in One extension

Add to `Settings.json`

```json
"markdown.copyFiles.destination": {
    "**/*.md": "images/${fileBasenameNoExtension}/"
}
```
