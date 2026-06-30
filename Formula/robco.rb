class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.3"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.3/robco-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "31b28e4e0d5c841e70952003589e4f2b6aac3e9952a850fada4c0e6117c0f06b"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.3/robco-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "ca8234254797f01b50ee9401b1a94e56cf879665155f984080f17905a58ab521"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.3/robco-0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "38e333dfdd1fb971d989117c8cb035173b958edc64dc93a778d36d56d6bcd11f"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.3/robco-0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b7008483b7706e34c582e2ccc066c710dff71e95349491b8609511c92f8fc457"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
