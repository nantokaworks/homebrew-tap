class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.98"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.98/robco-0.1.98-aarch64-apple-darwin.tar.gz"
      sha256 "cd8ad40eb9e1d5afc8c637fbd0bced7d9e1a9769320717ba8b7b86e191e8c9d7"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.98/robco-0.1.98-x86_64-apple-darwin.tar.gz"
      sha256 "1370f233e6d5e4eb99ef70405b9e07f07bb8226bcc0f042899dd631fda7e0d18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.98/robco-0.1.98-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "12883f3b4a608a39a78906a0d4b6e9d0a48d6d13e684afa6d8a704a1e6e87ffa"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.98/robco-0.1.98-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "76845a07af6c83029dc96cf72e25eccdbe7e1365b856e6d8cc515a75108e91b8"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
