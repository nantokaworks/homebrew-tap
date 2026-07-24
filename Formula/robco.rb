class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.60"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.60/robco-0.1.60-aarch64-apple-darwin.tar.gz"
      sha256 "6f9d05ed46946cae92c12cfbfeae2583348dcf237f2e191894db441d62fa3816"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.60/robco-0.1.60-x86_64-apple-darwin.tar.gz"
      sha256 "05db721ceeb01b44bec2f0e6eb642f62194df7f6cdc4223e2423f49a57d6bc88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.60/robco-0.1.60-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be0ca122dc9fc4d45d5624d54321cadbaea298ac4df3e1d06e5bc7470228edb7"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.60/robco-0.1.60-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d78f5ff50d34e1b26d50ec0868b202c0fd02cce17ef516f9ecbca45c15cb9c4"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
