class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.47"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.47/robco-0.1.47-aarch64-apple-darwin.tar.gz"
      sha256 "5dce9a6adee013eda76b3ba1d0088786d9bfeeb2b0d8f85c76ef3434ad0f4dd5"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.47/robco-0.1.47-x86_64-apple-darwin.tar.gz"
      sha256 "d215d23438bb5b7c0bd4be5b442309990733d5c928b6fbc024cad2fc759f1698"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.47/robco-0.1.47-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5233f4da56bdbd0afbe503614528376626590e11fe11c5095b3e3d476bb4707c"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.47/robco-0.1.47-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "65abbf70d16e565578d5bf063d043dd10b948ddd91bfe058a793ede96ee5ea9b"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
