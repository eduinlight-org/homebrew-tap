class Sddvault < Formula
  desc "Command-line tool for SDD Vault, the hosted store for Spec Driven Development"
  homepage "https://sddvault.com"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://get.sddvault.com/releases/1.3.0/sddvault-1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "6b3616cb5417e1aa3c67537f6a70e4508c0cb0b5c8669b754c9e53f5be4eb153"
    end
    on_intel do
      url "https://get.sddvault.com/releases/1.3.0/sddvault-1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "9bc4e2c1b2ee8562d2ac3363c60b552b083c9ea1483d2ba01b4eab626656efe7"
    end
  end

  on_linux do
    on_arm do
      url "https://get.sddvault.com/releases/1.3.0/sddvault-1.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e18e546f771ed99d66c13e02b53fa6d547fe7452d4af4306083d9f9bcc7b4786"
    end
    on_intel do
      url "https://get.sddvault.com/releases/1.3.0/sddvault-1.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb15b2a05757c13768303a0d94f2e5463e637ee36d8fee8282248c911d114c6b"
    end
  end

  def install
    bin.install "sddvault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sddvault --version")
  end
end
