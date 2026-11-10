class Sddvault < Formula
  desc "Command-line tool for SDD Vault, the hosted store for Spec Driven Development"
  homepage "https://sddvault.com"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://get.sddvault.com/releases/1.4.0/sddvault-1.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "961a8ed5db0fa107d464f70b59f2e254e1d426a4477be9be1aa6afd56a0d0387"
    end
    on_intel do
      url "https://get.sddvault.com/releases/1.4.0/sddvault-1.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "d2028e0860e89a3272392117d6bb8e08e1f73f0a1367365ea10c9521a6c3671a"
    end
  end

  on_linux do
    on_arm do
      url "https://get.sddvault.com/releases/1.4.0/sddvault-1.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c9c3ff4a20572c5e7b5e564ed4150b8f4ff57fbe77734ffece4894e040a00ac"
    end
    on_intel do
      url "https://get.sddvault.com/releases/1.4.0/sddvault-1.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f70637a2f708e801e8a113f34ac1785be61b8988ad4f9161f18abe44d10032b8"
    end
  end

  def install
    bin.install "sddvault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sddvault --version")
  end
end
