class Sddvault < Formula
  desc "Command-line tool for SDD Vault, the hosted store for Spec Driven Development"
  homepage "https://sddvault.com"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://get.sddvault.com/releases/1.2.0/sddvault-1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "eaf493b3fa0fbfab8f7ed5b438ff9e42e4b2e4efee98cc218e35280dee21e3dc"
    end
    on_intel do
      url "https://get.sddvault.com/releases/1.2.0/sddvault-1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "fab47b2d08a9d71018a906ff4e76b74cc7139f723eb1ed73d48a8b40d93c9da6"
    end
  end

  on_linux do
    on_arm do
      url "https://get.sddvault.com/releases/1.2.0/sddvault-1.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2e94941d603da0b18bcca48c77b11d2cad2b8ba57cf46c25dbbeaaf28240b6ee"
    end
    on_intel do
      url "https://get.sddvault.com/releases/1.2.0/sddvault-1.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "349ae0219a5a6a0436ed607be68d3fce4b4e89f7fe09c10489d1d28ed137f344"
    end
  end

  def install
    bin.install "sddvault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sddvault --version")
  end
end
