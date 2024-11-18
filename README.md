# Roku Sudoku Test Sample App

Sample Roku App in SceneGraph that shows basic layout and user interaction


## Setup instructions

 Install npm dependencies (For node-based BSC tools)
   ```bash
   npm install
   ```

## Usage

### Running from VSCode

1. Install [BrightScript Language](https://github.com/rokucommunity/vscode-brightscript-language) extension

2. Run `BrightScriptDebug: Launch`

3. Or, create a `.env` file in the format:

```env
ROKU_HOST=<IP Address of Roku>
ROKU_PASSWORD=<Developer password>
```

and run `BrightScriptDebug: Launch From ENV`

### Running from Command line

Run `npm run build`

This will create a zip file: `./out/suduko-test.zip`

## Debugging

This repository comes pre-configured to work with the [BrightScript Language](https://github.com/rokucommunity/vscode-brightscript-language) extension for Visual Studio Code. So once you have that plugin installed, debugging your project is as simple as clicking the "Start Debugging" button.
