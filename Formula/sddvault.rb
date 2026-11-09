class Sddvault < Formula
  desc "Command-line tool for SDD Vault, the hosted store for Spec Driven Development"
  homepage "https://sddvault.com"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://get.sddvault.com/releases/1.2.1/sddvault-1.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "d5d5eef0e54b06baf31050da9e491728e0a7765356be61d84653606b512520d7"
    end
    on_intel do
      url "https://get.sddvault.com/releases/1.2.1/sddvault-1.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "171e16835cc38cd85359832dd525cd1eba5fab3eaa67420a1c2ea407822ac7cb"
    end
  end

  on_linux do
    on_arm do
      url "https://get.sddvault.com/releases/1.2.1/sddvault-1.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "728e0cf694e403ac1e486a4e403eaee143670773e510da3142295b8bec6d78ab"
    end
    on_intel do
      url "https://get.sddvault.com/releases/1.2.1/sddvault-1.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28e5862833190bfa567b23224334d6ef32d175313d03f74c98fa47a2206a9114"
    end
  end

  def install
    bin.install "sddvault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sddvault --version")
  end
end
