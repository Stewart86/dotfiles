# Install Essential Tools

echo "set system timezone to Asia/Singapore"
set-timezone Asia/Singapore

echo "Upgrading current packages.."
sudo apt-get update && sudo apt-get upgrade -y

echo "Installing essential tools.."
sudo apt-get install -y \
  build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev curl \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

echo "Installing default CLI tools.."
sudo apt-get install -y \
  fish \
  bat \
  eza \
  fd-find \
  ripgrep \
  fzf \
  neovim \
  unzip \
  btop \
  lsd \
  gdu \
  gh \
  stow \
  git

echo "Installing zoxide.."
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

stow fish

echo "Change default shell to fish.."
if [ -f /usr/bin/fish ]; then
  chsh -s "$(which fish)"
else
  echo "Fish shell not found. Please install fish shell first."
fi

echo "Installing essentials for Neovim.."

echo "Installing Rust.."

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "Installing NodeJS.."

cargo install fnm
fnm completions --shell=fish > ~/.config/fish/completions/fnm.fish

fnm install latest
fnm default latest

curl -fsSL https://get.pnpm.io/install.sh | sh -


pnpm install -g tree-sitter-cli commitizen cz-emoji-conventional

echo "Installing Python.."

curl -sSL https://pyenv.run | bash

echo "Installing Lazygit.."

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

stow layzgit nvim

echo "Installing yazi.."

cargo install --locked yazi-fm yazi-cli

stow home ssh_pub

