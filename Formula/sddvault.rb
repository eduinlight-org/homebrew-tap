class Sddvault < Formula
  desc "Command-line tool for SDD Vault, the hosted store for Spec Driven Development"
  homepage "https://sddvault.com"
  version "1.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://get.sddvault.com/releases/1.4.1/sddvault-1.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "d50a4137a3c750af1c53f0d42938af45abb223da9d689803198ba3f1e1684b01"
    end
    on_intel do
      url "https://get.sddvault.com/releases/1.4.1/sddvault-1.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "b17442e71bd187837966a9dacb9dd2524950dcf763d27f1a67bffa80e67ae687"
    end
  end

  on_linux do
    on_arm do
      url "https://get.sddvault.com/releases/1.4.1/sddvault-1.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "74cf0a615389221a2daa3ad136bd19b1383dff6c41cff1a6ecc20638d6b53bd1"
    end
    on_intel do
      url "https://get.sddvault.com/releases/1.4.1/sddvault-1.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37d0687153edcf3979702800bde2e8ae10c9eb3893d4b642605a90f95de1bcb2"
    end
  end

  def install
    bin.install "sddvault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sddvault --version")
  end
end
