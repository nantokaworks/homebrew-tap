class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.94"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.94/robco-0.1.94-aarch64-apple-darwin.tar.gz"
      sha256 "5b3bfff3a46dcd3745b27abc2579477ac96560470a917e91736f47dbfb284330"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.94/robco-0.1.94-x86_64-apple-darwin.tar.gz"
      sha256 "514440fe996b8e3617514c70ca7be14e8febd4ef2a16a073f3c2f0dba1b9d959"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.94/robco-0.1.94-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4f5ed923df8b4fa823337316a9fbffc19c365a47faf5aa3bc6562182ac5fb210"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.94/robco-0.1.94-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c60100abf3c6fb95877b5ee86a5a1688e9a3b574498c47fdf4ddb4e2dcf40ad"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
