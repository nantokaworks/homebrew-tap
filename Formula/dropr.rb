class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.47"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.47/dropr-0.4.47-aarch64-apple-darwin.tar.gz"
      sha256 "c770c27dee142ed63ca85ffeedcc5d8092d4fbdd8fd06bb600d8b53586e27cb7"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.47/dropr-0.4.47-x86_64-apple-darwin.tar.gz"
      sha256 "5d580633d03a04e33e53fdb5d1ea360a1a80f1b82c0548be21154ac7435d3d15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.47/dropr-0.4.47-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dff60050f2ce7f8ccfa167e6bba88823748cff5f3984a441fd72162c0366be82"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.47/dropr-0.4.47-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "faf394335b814a9ce2becbf29262d3b648daf3e70f39c705e15e305adc2cd24f"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
