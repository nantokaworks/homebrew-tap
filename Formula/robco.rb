class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.33"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.33/robco-0.1.33-aarch64-apple-darwin.tar.gz"
      sha256 "49ebc8af6b1aa0b636b7bd048ce6aaabfe6025f0df1a81fb08e7baa62d8e9b27"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.33/robco-0.1.33-x86_64-apple-darwin.tar.gz"
      sha256 "6d92d55fa5e04d89e792862505bfc5db57dbba5bddba81496606dcd1fbf47e7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.33/robco-0.1.33-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "09677dee19bb0e3dd90fc2984e59662d18d3ded2fcf2e3fcc2541e2f05a6c105"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.33/robco-0.1.33-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b30b09475cb51ee70cb7257a8ab85ae4ff11247a59e4d86d3da3fe6a386eca57"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
