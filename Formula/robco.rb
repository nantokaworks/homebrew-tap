class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.76"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.76/robco-0.1.76-aarch64-apple-darwin.tar.gz"
      sha256 "db788540e9f645cca77e2e0e125f56032d299625939b51ddf8a5eb4806209b77"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.76/robco-0.1.76-x86_64-apple-darwin.tar.gz"
      sha256 "ba15ddc50f033b29dc3a04fa71aad750604c2e9a33c5394dd3a4f9ea3ba8a735"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.76/robco-0.1.76-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eb1cf172ef9200a0e5e66d72874b42133df6b9e5887bd9d0c45d3eb9fccdba6a"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.76/robco-0.1.76-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2993fe36988d4de0014953e3065e59b2ada225bf1128fd06264984ec39c40e72"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
