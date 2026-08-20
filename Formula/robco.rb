class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.4.2"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.2/robco-0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "e440c06a2ae9aa4101f5b7e880732838297855ac515c91d2507c83b8ac2b693c"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.2/robco-0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "69b4fdbdcd2f054ca48f80a0da2f2f240b5e9da4eba0a5fee469814a6445b670"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.2/robco-0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "298a96e329b2e7afd88e02c65b42afd6241d100da0c5e170351a36c82364f5da"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.2/robco-0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "924f96d8c8bcdcdef0eea10659026607d975a2f529dd4d25a495fe8eefa65703"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
