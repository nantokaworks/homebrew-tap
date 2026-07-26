class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.73"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.73/robco-0.1.73-aarch64-apple-darwin.tar.gz"
      sha256 "75f2375159a5d239575ee8d8518852e7213408cf983b1d75dcf63bd192812545"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.73/robco-0.1.73-x86_64-apple-darwin.tar.gz"
      sha256 "28bca20a8978b71b9a6afc61a31e17bd1e51417d2d3b2d75312399fbc27643cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.73/robco-0.1.73-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b8d044f6367fbd781d686c11b4ce4ab38369b6430e28cf0e7556929c0a97430a"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.73/robco-0.1.73-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c05b6f4e95b73fd55cff6013fe9a13f79df86d45e40e403ce2555394ece765e"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
