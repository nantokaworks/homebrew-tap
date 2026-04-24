class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.1.1"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr/releases/download/cli-v0.1.1/dropr-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "9031aee3f77629b54f52d242c016c8837ad2f45b26bbf2b4525e4c2517f22375"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr/releases/download/cli-v0.1.1/dropr-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "242eed10f8395a253ca684e979ac83e379ade3d5e016d7d9e940238a63030df5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr/releases/download/cli-v0.1.1/dropr-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c462a9c7a41a8fade1df6d2b483099691cd5a736ccd371b01dc36aa58b786e2"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr/releases/download/cli-v0.1.1/dropr-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b895919b141936c550a15cd11e33ecbe722edd01d5eb6ca4d9a97bf733fc6a40"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
