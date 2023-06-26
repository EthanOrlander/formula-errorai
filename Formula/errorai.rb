class ErrorAI < Formula
    include Language::Python::Virtualenv
    desc "An AI tool for fixing errors in code"
    homepage "https://github.com/ethanorlander/"
    url "https://s3.amazonaws.com/errorai/errorai-0.1.0.tar.gz"
    version "0.1.0"
    sha256 "9205e7c3990e54b364ba55cd136a9649fd192b026fbd150888cfd3deea2a784f"
    
    def install
      puts "Copying shell files..."
      FileUtils.mkdir_p("#{ENV["HOME"]}/.errorai/shell")
      FileUtils.mkdir_p("#{ENV["HOME"]}/.errorai/tmp")
      FileUtils.cp_r("shell/*", "#{ENV["HOME"]}/.errorai/shell")

      # Copy executable files to /usr/local/errorai
      puts "Copying executable files..."
      system "sudo", "cp", "-R", "dist/errorai", "/usr/local"

      # Add to ~/.zshrc
      puts "Adding to ~/.zshrc..."
      File.open("#{ENV["HOME"]}/.zshrc", "a") do |file|
        file.puts ""
        file.puts "# ErrorAI"
        file.puts 'export PATH="/usr/local/errorai:$PATH"'
        file.puts '[[ -f "$HOME/.errorai/shell/zshrc.zsh" ]] && builtin source "$HOME/.errorai/shell/zshrc.zsh"'
      end

      puts "Installation complete!"
    end
  
    test do
      system "errorai", "--help"
    end
  end
  