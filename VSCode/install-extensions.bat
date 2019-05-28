@echo off
echo.
echo VS Code Extensions:
echo -------------------
:: Tools
call code --install-extension eamodio.gitlens
call code --install-extension Tyriar.shell-launcher
::call code --install-extension Gruntfuggly.todo-tree
:: Language support
call code --install-extension ms-vscode.csharp
call code --install-extension ms-vscode.Go
call code --install-extension ms-vscode.notepadplusplus-keybindings
call code --install-extension ms-python.python
call code --install-extension mauve.terraform
::call code --install-extension yzhang-gh.vscode-markdown
::call code --install-extension marcostazi.VS-code-vagrantfile
:: Usability
call code --install-extension stuart.unique-window-colors
echo.
echo done
