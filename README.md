# dev-container-deployment

A single script deployment to setup a simple dev environment inside a dev-container (like GitHub Codespaces)

Works with bash, zsh and fish shells.

## Contains
- Neovim
- Zoxide (mapped to cd)
- fzf
- Starship prompt
- Customised with ~/.config dotfiles from [here](https://github.com/henrybatt/dotfiles).

# Usage
1. **Clone git repo in dev container**
	```sh
	git clone https://github.com/henrybatt/dev-container-deployment.git
	```

1. **Make deployment script executable**
	```sh 
	chmod +x deploy.sh
	```

1. **Execute the script**
	```sh
	./deploy.sh
	```

1. **Read and accept installation prompts**

1. **Re-source the bash shell**
	```sh
	source ~/.bashrc
	```

