class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.0"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.0/robco-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "46c9f4c54d387d1fbf6f0bc9f0dd8eb1be5e5e4f0a79d1b67f8fa15181e0c29a"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.0/robco-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "4f3ab23b773d925c7ea0e7cee1277c8e2895bab5b5616431638d461dce59d0fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.0/robco-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3de8bbbf8e957267ddb294b56aa0f2a4c915fce204ecfa83448a96bf81c7886"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.0/robco-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad8c9890646d8f186d79a47105f69f145fc7dfac6312dfa76513c2caea097d93"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
