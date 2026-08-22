class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.5.2"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.5.2/robco-0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "88ab338aeea8b3d7bafde005f872d1c57d9f6254a170b5bcd319dc8c84d026a1"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.5.2/robco-0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "959182745628148153d6e95032ee4923ad9b18478d59c41ca7488410e8308709"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.5.2/robco-0.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2dcd4ed6738ca12c573bc0c33320042cbbe29cf263980b8f945918479c39324e"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.5.2/robco-0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f738b153c5ce4c4a1ab7a3889dc224e4d985aeada24a90ab9526f0c8e2c08c3"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
