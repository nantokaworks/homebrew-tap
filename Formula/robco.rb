class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.5.0"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.5.0/robco-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "e1a9647fb5c548c04c6d632ec99d9da6eedd94cf07ba03bf118e9e6127cda792"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.5.0/robco-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "05c14252a72fd505bebc249d3366b612f8f73daad8ae11346c913e763ce00b16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.5.0/robco-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd2eb747398356475f7efbf54572b1fd11072d435140b7f9f96d17b0c4d5b3bb"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.5.0/robco-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c91ac528f6cf31849957055eb03d598c4846e457fc9256375f48371aa925b247"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
