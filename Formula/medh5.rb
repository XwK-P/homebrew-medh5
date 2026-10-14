class Medh5 < Formula
  desc "Inspect, validate, verify and curate MEDH5 medical imaging files"
  homepage "https://github.com/XwK-P/medh5"
  version "2.0.2"
  license all_of: ["MIT", "BSD-3-Clause", "BSD-2-Clause", "Zlib", "Apache-2.0", "MIT-0"]

  on_macos do
    on_arm do
      url "https://github.com/XwK-P/medh5/releases/download/v2.0.2/medh5-2.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "8efd2ed065adc9dd7de426223c5aefcee912292912bd65d40caa8996836bc2a2"
    end
    on_intel do
      url "https://github.com/XwK-P/medh5/releases/download/v2.0.2/medh5-2.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "afa8a54fe2dda2224bd7260ec6e045620e39c275342766b955e74685b9b59963"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/XwK-P/medh5/releases/download/v2.0.2/medh5-2.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b666f2e443738f668d8650c1adb2dd3c391a87c40820524a1b8c949132a2ae93"
    end
    on_intel do
      url "https://github.com/XwK-P/medh5/releases/download/v2.0.2/medh5-2.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cdcfb57b4c1eacdccd733da52f43a4fb90cf2ca57191e7112d5a5d956da105f9"
    end
  end

  def install
    bin.install "medh5"
  end

  test do
    assert_match "medh5 #{version}", shell_output("#{bin}/medh5 --version")
  end
end
