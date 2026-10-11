class Medh5 < Formula
  desc "Inspect, validate, verify and curate MEDH5 medical imaging files"
  homepage "https://github.com/XwK-P/medh5"
  version "2.0.1"
  license all_of: ["MIT", "BSD-3-Clause", "BSD-2-Clause", "Zlib", "Apache-2.0", "MIT-0"]

  on_macos do
    on_arm do
      url "https://github.com/XwK-P/medh5/releases/download/v2.0.1/medh5-2.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "db3438c44e362e74a75682822e38572a11ccfc352178711b3f2211abe1115ff2"
    end
    on_intel do
      url "https://github.com/XwK-P/medh5/releases/download/v2.0.1/medh5-2.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "41800665f75cf5a25678dd4a879e9af7b098f189295da60813e11639b3873b2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/XwK-P/medh5/releases/download/v2.0.1/medh5-2.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9891cb80a0be69ae7a8f06a59b69f86d2c6c37c2e04e6a9aa8087b878303d362"
    end
    on_intel do
      url "https://github.com/XwK-P/medh5/releases/download/v2.0.1/medh5-2.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "856d9a8b76adf52dfe55ac122c50fe473507f7a329e55fffe245899598ae11ed"
    end
  end

  def install
    bin.install "medh5"
  end

  test do
    assert_match "medh5 #{version}", shell_output("#{bin}/medh5 --version")
  end
end
