# Run Sketch Script in Editors

## 1. Install Sketch Plugin
Move the ```.CustomRunScript.sketchplugin``` file to the sketch plugins folder.

This plugin will not show in the sketch plugins menu as you would never run it from the sketch app.

## 2. Run Script with Sublime Text
Move the ```sublime-text/Sketch Script.sublime-build``` file to the Sublime Text user folder ```~/Library/Application Support/Sublime Text 3/Packages/User/```

Use Sublime Text to open a ```.js``` file, then run the ```Tools -> Build With...``` command, choose the **Sketch Script** from the list.

Sublime Text will show the output message for you after the scirpt been executed.

## 3. Run Script with VSCode
Move the ```.vscode``` folder to the folder which you save the sketch scripts.

Run ```Tasks: Run Task``` command in Command Palette, and then choose the **Run sketch scripts** task.
