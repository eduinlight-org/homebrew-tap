class Sddvault < Formula
  desc "Command-line tool for SDD Vault, the hosted store for Spec Driven Development"
  homepage "https://sddvault.com"
  version "1.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://get.sddvault.com/releases/1.4.3/sddvault-1.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "08d3a92dc5ef342fb8871ae4f7c837c72a16b22ea0736614c8e9321961920e50"
    end
    on_intel do
      url "https://get.sddvault.com/releases/1.4.3/sddvault-1.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "abb0634e0e10a3065366ad98ec361f78e4b62bbae0ee44729277765a616dd073"
    end
  end

  on_linux do
    on_arm do
      url "https://get.sddvault.com/releases/1.4.3/sddvault-1.4.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ede88315654d1bac08deb55af749026a3637eef8aeb32c93ca659248b863bd42"
    end
    on_intel do
      url "https://get.sddvault.com/releases/1.4.3/sddvault-1.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9bedbbdf22fe6aee41873ac2561dd97e733de5af54b4eeaa1b0f222f7f410ccb"
    end
  end

  def install
    bin.install "sddvault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sddvault --version")
  end
end
