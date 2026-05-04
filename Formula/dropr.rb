class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.1.12"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.12/dropr-0.1.12-aarch64-apple-darwin.tar.gz"
      sha256 "2cf6fc6bb7ce80712e50e3a7934813911b9f2896450d275a67a9334681ff630f"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.12/dropr-0.1.12-x86_64-apple-darwin.tar.gz"
      sha256 "6163c3ea9c4eb3031b5dced073f2a08b806ffbb8ae191e34f0acf774de51b142"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.12/dropr-0.1.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c407e267d0b0e82d2f9afd850501782bb3f4c8a4a32e1f2c1cef419de1525197"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.12/dropr-0.1.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa158ca12df59de4fa69582254f66734636fef23bc39cd6ef4cc58f2b090dbe4"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
