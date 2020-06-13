# Run Sketch Script in Editors

This project can help you to run sketch scripts in your favorite editor, like Sublime Text and VSCode, and you can get the output messages directly from the editor. From now on, you will never have to endure the bad code environment(default run scripts & devtool) again.

## 1. How It Work

This project use two parts to make the script could be executed in sketch. 

One is a **sketch plugin** which your custom scripts will be added into it by a **shell script** inside, and the shell scirpt will run this sketch plugin in sketch after the scripts updated.

Another part is a **build system** or **run task** for editors. This makes your scripts in editor can be send to the shell script in sketch plugin.

After you run the build system or run task in editors, the shell script will copy the ```script-default.js``` file in sketch plugin to a new ```script.js``` file. And your scripts will be added into the end of the ```scripts.js``` file. Then the shell script will run the sketch plugin in your current sketch document.

The [script-default.js](https://github.com/tankxu/run-sketch-script-in-editors/blob/master/.CustomRunScript.sketchplugin/Contents/Sketch/script-default.js) file contains some useful const code, like
```
const sketch = require("sketch")
const document = sketch.getSelectedDocument()
const selection = document.selectedLayers.layers
...
```
So you can just type ```seletion``` in your script instead to const it again.

## 2. Install Sketch Plugin
Download and extract this repo. Move the ```.CustomRunScript.sketchplugin``` file *(may be hidden in your Finder, press ```command + shift + . ``` to show)* to the sketch plugins folder.

This plugin will not be shown in the sketch plugins menu as you would never run it from the sketch app.

## 3. Run Script with Sublime Text
Move the ```sublime-text/Sketch Script.sublime-build``` file to the Sublime Text user folder ```~/Library/Application Support/Sublime Text 3/Packages/User/```

Change the ```Users Path``` in the ```Sketch Script.sublime-build``` file: 
```"shell_cmd": "\"/Users/tank/Library/``` to ```"shell_cmd": "\"/Users/YourName/Library/```

Use Sublime Text to open a ```.js``` file, then run the ```Tools -> Build With...``` command from menu, choose the **Sketch Script** option from the list.

Sublime Text will show the output message for you after the scirpt been executed.

![Sublime Demo](https://user-images.githubusercontent.com/5106039/84559582-632b2080-ad6e-11ea-9ef0-50b9c349aa83.png)


## 4. Run Script with VSCode
Move the ```.vscode``` folder to the folder which you save the sketch scripts.

Change the ```Users Path``` in the ```tasks.json``` file: 
```"command": "/Users/tank/Library/``` to ```"command": "/Users/YourName/Library/```

Run ```Tasks: Run Task``` command in Command Palette, and then choose the **Run sketch scripts** task.

![VSCode Demo](https://user-images.githubusercontent.com/5106039/84559659-0aa85300-ad6f-11ea-9c95-faf787804a8f.png)


## 5. Best Practice
The best practice of run-sketch-script workflow which i used for a few months is create a folder to save your sketch scripts file, the script files in folder may looks like this:
```
~/Develop/sketch-scripts/
├── Generate icons preview.js
├── Get all symbols.js
├── Link library from path.js
├── Log overrides.js
├── Random position.js
├── Replace overriders and layer name.js
├── script.js
├── script2.js
├── script3.js
└── script4.js
```

The ```script*.js``` files use for code your script anytime. As you would need to run some different scripts to solve a complex task, and you don't want to switch annotate frequently, so you can create several temp script.js to code your different parts of scripts.

The others ```xxx.js``` files can store your script snippets which often be used.

And then use the editor's project manager function to save this folder as a project, now you can quick open the editor and switch to the custom sketch scripts project when you want to run some scripts in sketch.
