class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.6.2"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.6.2/robco-0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "69f4d15713d74512724ba39d0e4d927259fddea261db3930513dd011d617b8b5"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.6.2/robco-0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "40be623f0b6d291b6eff8e305cded633525b1d792e6d26e313ff57c15249bab9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.6.2/robco-0.6.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a5ff6035ac1e1bd359c775ca399b7376eddcf95fbfad207dfd6ff745871b769d"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.6.2/robco-0.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "32ce88a46bf000d63c955424c093c77dd59634bf4e2986e50ffd1471718897b2"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
