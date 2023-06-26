class Errorai < Formula
    desc "An AI tool for fixing errors in code"
    homepage "https://github.com/ethanorlander/"
    url "https://s3.amazonaws.com/errorai/errorai-0.1.0.tar.gz"
    version "0.1.0"
    sha256 "c1bde932c35f8ecb3e16683548ba4629f3dccb01d2a29d4a191f6edd7306d858"

    def install
      prefix.install Dir["*"]
    end

    def caveats
      <<~EOS
        To activate ErrorAI, add the following to your ~/.zshrc:
          export PATH="#{opt_prefix}/dist:$PATH"
          [[ -f \"#{opt_prefix}/shell/zshrc.zsh\" ]] && builtin source \"#{opt_prefix}/shell/zshrc.zsh\"
      EOS
    end
    
    test do
      system "errorai", "--help"
    end
  end
  