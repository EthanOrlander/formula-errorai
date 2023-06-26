# Install errorai from source
echo "Installing errorai from source..."
brew install ethanorlander/errorai/errorai

# Add to ~/.zshrc
echo "Adding to ~/.zshrc..."
echo "" >> ~/.zshrc
echo "# ErrorAI" >> ~/.zshrc
echo 'export PATH="#{opt_prefix}/dist:$PATH"' >> ~/.zshrc
echo '[[ -f \"#{opt_prefix}/shell/zshrc.zsh\" ]] && builtin source \"#{opt_prefix}/shell/zshrc.zsh\"' >> ~/.zshrc