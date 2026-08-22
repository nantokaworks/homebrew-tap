class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.5.3"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.5.3/robco-0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "9a04704eefec3d86fe97e8362f7e49cde7ef1edf21d07a0988969bb55180601e"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.5.3/robco-0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "42a377c15de7902c8638c23686406fc89119730b1d222f61aee9130436eb3b67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.5.3/robco-0.5.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "787a0c78742eacfd89767cd4b5f639bcfc8e8f5139549aaeb91e0b61cf691d59"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.5.3/robco-0.5.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9fadcb937f7276c0801f8b88b4c2faf871a20c952e41b884cc09de726aa472e"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
