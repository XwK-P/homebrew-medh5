class Medh5 < Formula
  desc "Inspect, validate, verify and curate MEDH5 medical imaging files"
  homepage "https://github.com/XwK-P/medh5"
  version "2.0.3"
  license all_of: ["MIT", "BSD-3-Clause", "BSD-2-Clause", "Zlib", "Apache-2.0", "MIT-0"]

  on_macos do
    on_arm do
      url "https://github.com/XwK-P/medh5/releases/download/v2.0.3/medh5-2.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "05a022ee4f35fe783ae60da67e44f32e4c9c175eb03ead6472e2588e64545c90"
    end
    on_intel do
      url "https://github.com/XwK-P/medh5/releases/download/v2.0.3/medh5-2.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "2ac2ee82d234bbfd900ccd6e953c5bcc8fb0efb788e04c7f62f41e3f79cff403"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/XwK-P/medh5/releases/download/v2.0.3/medh5-2.0.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b37a3b52fdafb6e108bdcd993aba890aa38c2f9ab6340c84d6102b0d64506d52"
    end
    on_intel do
      url "https://github.com/XwK-P/medh5/releases/download/v2.0.3/medh5-2.0.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "66ddfa1984ddba80d2b42d50ddcb9fc3ca47bdeda91b9bf42ffad2fafcaab52d"
    end
  end

  def install
    bin.install "medh5"
  end

  test do
    assert_match "medh5 #{version}", shell_output("#{bin}/medh5 --version")
  end
end
