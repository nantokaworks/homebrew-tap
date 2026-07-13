class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.25"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.25/robco-0.1.25-aarch64-apple-darwin.tar.gz"
      sha256 "4f25f8a5013deaecf69284ff36d72f33befb5e2c883abbfadc4e980c7ab39a10"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.25/robco-0.1.25-x86_64-apple-darwin.tar.gz"
      sha256 "b020c17fe75d7e6bcdef6acbd153175ac70520a9113e256b2b352de0d17be4aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.25/robco-0.1.25-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7a46499a0c21d7cd9cefc94e216be2889f5a88adea7aed973de298b7633f5376"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.25/robco-0.1.25-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8bbdad97db0bf0eee3c6f47aa5f146293280ac0de505e7ec614f4488b79e42a"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
