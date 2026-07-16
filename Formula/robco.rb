class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.46"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.46/robco-0.1.46-aarch64-apple-darwin.tar.gz"
      sha256 "8f86730be0b341554ef354a2aaad47bcb12b91804d4b36cca6836153d71d4619"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.46/robco-0.1.46-x86_64-apple-darwin.tar.gz"
      sha256 "b4de01913d3dae750b11a40f881b2d789688932e6f8e3cdaed3f47d877d8619f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.46/robco-0.1.46-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7b86d3614d0e7972a183c1e3eee62da4e795f981736233632e3f8152a2bfd236"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.46/robco-0.1.46-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e83a515c3b103e3f7bf52cb766978e2de50766b2ad071528b8dde46830acecd"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
