class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.40"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.40/robco-0.1.40-aarch64-apple-darwin.tar.gz"
      sha256 "a6f53c3a122fb500da52a43f51da379240144555c9cf487bdad5d198d4f4da6c"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.40/robco-0.1.40-x86_64-apple-darwin.tar.gz"
      sha256 "c33cc597a316e5cc60bcebad7e5464b9913b4135a479ad07c8817e13dc5d37d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.40/robco-0.1.40-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0dd742c379cff81a717262406c29a24b48c1a586738cdab46e4a242d36080c20"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.40/robco-0.1.40-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5702bb52a341c5ebfca6ff8ccd326e52292f6efe3cf14cf886ae20c4fd3258f6"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
