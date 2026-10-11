class Medh5 < Formula
  desc "Inspect, validate, verify and curate MEDH5 medical imaging files"
  homepage "https://github.com/XwK-P/medh5"
  version "2.0.0"
  license all_of: ["MIT", "BSD-3-Clause", "BSD-2-Clause", "Zlib", "Apache-2.0", "MIT-0"]

  on_macos do
    on_arm do
      url "https://github.com/XwK-P/medh5/releases/download/v2.0.0/medh5-2.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "1e4777e0a1cfeccd70313f1398308707d2f30d296aca4517fa64b235970b8169"
    end
    on_intel do
      url "https://github.com/XwK-P/medh5/releases/download/v2.0.0/medh5-2.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "c730920093dbe73f0b160d477e4b4a3a28a9fc33652c2db5dc253432cc5c7147"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/XwK-P/medh5/releases/download/v2.0.0/medh5-2.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f95bf59ecc2a215c07f52c9120a34cff931fa0dc814a18c92ef04f2ddbc3d5ce"
    end
    on_intel do
      url "https://github.com/XwK-P/medh5/releases/download/v2.0.0/medh5-2.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fcf495897996427276bf098286e4dad35ff2672185e042eefab1fca036ec35d2"
    end
  end

  def install
    bin.install "medh5"
  end

  test do
    assert_match "medh5 #{version}", shell_output("#{bin}/medh5 --version")
  end
end
