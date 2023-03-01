##
# 'brew tap'
#
# Add 'brew tap' with custom Git URL:
# tap "user/tap-repo", "https://user@bitbucket.org/user/homebrew-tap-repo.git"
#
# Or with 'brew tap' with arguments:
# tap "user/tap-repo", "https://user@bitbucket.org/user/homebrew-tap-repo.git", force_auto_update: true

tap "homebrew/core"
tap "homebrew/cask"
tap "homebrew/cask-versions"

##
# options
#
# Set arguments for all 'brew install --cask' commands:
# cask_args appdir: "~/Applications", require_sha: true

##
# 'brew install'
#
# Use 'brew install --with-rmtp', 'brew services restart' on version changes:
# brew "denji/nginx/nginx-full", args: ["with-rmtp"], restart_service: :changed
#
# To 'brew install', always 'brew services restart', 'brew link', 'brew unlink mysql' (if it is installed):
# brew "mysql@5.6", restart_service: true, link: true, conflicts_with: ["mysql"]
#
# Install only on specified OS:
# brew "gnupg" if OS.mac?
# brew "glibc" if OS.linux?

brew "mas"
brew "chezmoi"
brew "grep"
brew "jq"
brew "bitwarden-cli"
brew "node"
brew "nvm"
brew "kubernetes-cli"
brew "kubie"
brew "terraform"
brew "restic"

##
# 'brew install --cask'
#
# To 'brew install --cask --appdir=~/my-apps/Applications':
# cask "firefox", args: { appdir: "~/my-apps/Applications" }
#
# Bypass Gatekeeper protections (NOT RECOMMENDED):
# cask "firefox", args: { no_quarantine: true }
#
# Always upgrade auto-updated or unversioned cask to latest version even if already installed:
# cask "opera", greedy: true
#
# To 'brew install --cask' only if '/usr/libexec/java_home --failfast' fails:
# cask "java" unless system "/usr/libexec/java_home --failfast"

cask "iterm2"
cask "google-chrome"
cask "google-chrome-dev"
cask "obsidian"
cask "visual-studio-code"
cask "docker"
cask "raycast"
cask "spotify"
cask "the-unarchiver"
cask "slack"
cask "fork"
cask "bitwarden"
cask "buttercup"
cask "whatsapp"
cask "microsoft-teams"
cask "syncthing"
cask "mongodb-compass"
cask "ganttproject"
cask "insomnia"

##
# 'mas install'
#
# mas "GarageBand", id: 682658836
# mas "iMovie", id: 408981434
# mas "WhatsApp", id: 1147396723

mas "Magnet", id: 441258766