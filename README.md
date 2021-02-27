# WhoAmI
A tool to further automate atcoder-tools on vscode

# Requirements
- Linux or Mac
- g++
- atcoder-tools  
https://github.com/kyuridenamida/atcoder-tools


# Installation
1. Add the following dict into `keybindings.json`.  
You can change your favorite keybinds.
```json
{
    "key": "ctrl+alt+m",
    "command": "workbench.action.tasks.runTask",
    "when": "editorTextFocus",
    "args": "atocoder-tools_test"
},
{
    "key": "ctrl+alt+,",
    "command": "workbench.action.tasks.runTask",
    "when": "editorTextFocus",
    "args": "atcoder-tools_submit"
}
```


# Usage
1. Open `workspace` directory with vscode
1. Create new cpp_file or Open `main.cpp`
1. Enter the typeof test in line_2 in cpp_file (e.g. abc)
1. Enter the number of test in line_3 in cpp_file (e.g. 123)
1. Enter the division of test in line_4 in cpp_file (e.g. b)  
1. Press `ctrl+alt+m`(Run test) or `ctrl+alt+,`(Submit) when cpp_file is active.

Either UPPERCASE or lowercase is OK.