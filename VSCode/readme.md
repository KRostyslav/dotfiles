[tutorial](https://dev.to/denolfe/backup-and-restore-visual-studio-code-extensions-from-the-command-line-2dcc)

[second tutrial](https://anhari.dev/blog/saving-vscode-settings-in-your-dotfiles)

```bash
code --list-extensions > extensions.txt
```

```bash
cat extensions.txt | xargs -L 1 code --install-extension
```

--------

```bash
#!/usr/bin/env bash

if command -v code >/dev/null 2>&1; then
  code() {
    case "$1" in
    save-ext)
      echo "Saving code extensions..."
      code --list-extensions > ~/.dotfiles/vscode/extensions.txt
      ;;
    install-ext)
      echo "Installing code extensions..."
      cat ~/.dotfiles/vscode/extensions.txt | xargs -L 1 code --install-extension
      ;;
    *)
      command code "$@"
      ;;
    esac
  }
fi
```


```bash
code save-ext will output your extensions to file
```

```bash
code install-ext will install them from file
```