class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.96"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.96/robco-0.1.96-aarch64-apple-darwin.tar.gz"
      sha256 "4123a0bdebe9c15af6f304a62c3dfa74a5bdc497901318498974f72e4fd185e4"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.96/robco-0.1.96-x86_64-apple-darwin.tar.gz"
      sha256 "d36854d12dc0b5dcf4f9f98f8acdaddabd1e8173670c6b9229f2e3e50f1e7231"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.96/robco-0.1.96-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3d6daddbfe6966f5e7498a1bbfd0e78f89458723d643122faa4a74bc1591b98b"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.96/robco-0.1.96-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "25f6dbc97c3ff4c6358ae307463d9e769445c3c7901f1e6e2c97fff823ced8d6"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
