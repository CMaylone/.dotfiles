tmux-install-osx:
	@echo "Installing tmux"
	brew install tmux

tmux-install-plugin-manager:
	@echo "Install tmux plugin manager"
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux-link-config:
	@echo "Linking tmux config to home directory"
	ln -s $(shell pwd)/.tmux.conf ~

tmux-install-plugins:
	@echo "Installing tmux plugisn"
	~/.tmux/plugins/tpm/bin/install_plugins

tmux-setup-osx: tmux-install-osx mux-install-plugin-manager tmux-link-config tmux-install-plugins
