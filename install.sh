# Install errorai from source
echo "Installing errorai from source..."
brew update
brew install ethanorlander/errorai/errorai

# Add to ~/.zshrc
echo "Adding to ~/.zshrc..."
echo "" >> ~/.zshrc
echo "# ErrorAI" >> ~/.zshrc
echo "export PATH=\"$(brew --prefix errorai)/dist:\$PATH\"" >> ~/.zshrc
echo "[[ -f \"$(brew --prefix errorai)/shell/zshrc.zsh\" ]] && builtin source \"$(brew --prefix errorai)/shell/zshrc.zsh\"" >> ~/.zshrc