class Sddvault < Formula
  desc "Command-line tool for SDD Vault, the hosted store for Spec Driven Development"
  homepage "https://sddvault.com"
  version "1.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://get.sddvault.com/releases/1.4.2/sddvault-1.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "6277dccc0c8a8cda8ec2634e97bdc097a7c0070e05513dfc56d7faa95e32fc41"
    end
    on_intel do
      url "https://get.sddvault.com/releases/1.4.2/sddvault-1.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "facb1d2992294d916d9e585e9402e88b8ede0438bb669f3cc112b3ace7dfada8"
    end
  end

  on_linux do
    on_arm do
      url "https://get.sddvault.com/releases/1.4.2/sddvault-1.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d4582f8c65de9b7d306ca92c2e095ab0aa35a7ed7d72f9aaac98202602284e18"
    end
    on_intel do
      url "https://get.sddvault.com/releases/1.4.2/sddvault-1.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e2d931dc6b412335e38008c31a867f0c757708ffe0f5995a7eb77892df39486"
    end
  end

  def install
    bin.install "sddvault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sddvault --version")
  end
end
