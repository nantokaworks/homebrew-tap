class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.77"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.77/robco-0.1.77-aarch64-apple-darwin.tar.gz"
      sha256 "8ff13ff0dfe0f96f094ee7fa9ba57754684d7cd6fb7f2329ec41326ea8c71e1a"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.77/robco-0.1.77-x86_64-apple-darwin.tar.gz"
      sha256 "19ba7efa10dcb3fd06d304df6dea0ac68df8e428f7b8533d57363a6d23f8634e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.77/robco-0.1.77-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66aca21b8402200d1c5411ff21dd4170929122ca9e5b5e943d2386f7961c01c4"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.77/robco-0.1.77-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b73a67728fb70fa271fad166dead66a5cda9fd7d2166c18ffce494047499e888"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
