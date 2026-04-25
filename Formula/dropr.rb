class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.1.1"

  livecheck do
    url "https://cdn.dropr.sh/latest.txt"
    regex(/(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://cdn.dropr.sh/dropr-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "bf5f9babce7133e072c4b111e14bc6244d6acb2d63b9b741a59c720a7364834c"
    end
    on_intel do
      url "https://cdn.dropr.sh/dropr-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "8bdaa98f9d605e92b96dec57d34bfc07bb660ad3d5c506b38af24ae71f16e172"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.dropr.sh/dropr-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e040e8ea102707fae3b7411de3301e24e730b2101a41f563dbcb50a475c5cbb2"
    end
    on_intel do
      url "https://cdn.dropr.sh/dropr-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "329d1520ffe399d332605ddda85314bc06d91edd0bc4cdb51c9b06eac4c28abf"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
