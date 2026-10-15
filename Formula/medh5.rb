class Medh5 < Formula
  desc "Inspect, validate, verify and curate MEDH5 medical imaging files"
  homepage "https://github.com/medh5-project/medh5"
  version "2.1.0"
  license all_of: ["MIT", "BSD-3-Clause", "BSD-2-Clause", "Zlib", "Apache-2.0", "MIT-0"]

  on_macos do
    on_arm do
      url "https://github.com/medh5-project/medh5/releases/download/v2.1.0/medh5-2.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "00154f1a4a24bb09232ff13a4a7241a069b8ed64323316cba93c5479ac47885c"
    end
    on_intel do
      url "https://github.com/medh5-project/medh5/releases/download/v2.1.0/medh5-2.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "4e26fb52760633ba044cc4986e33eece65197374dd4ace0aac4c4b6932219c6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/medh5-project/medh5/releases/download/v2.1.0/medh5-2.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f2a5d0a21543f97eec2a1da5426b16c24c0e42affbaaf5669dc0a288bd6a840"
    end
    on_intel do
      url "https://github.com/medh5-project/medh5/releases/download/v2.1.0/medh5-2.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4b7921b71befb88d5df9dac998bfc3bbae33a781465f9bb0ba8834d04b5d7b0"
    end
  end

  def install
    bin.install "medh5"
  end

  test do
    assert_match "medh5 #{version}", shell_output("#{bin}/medh5 --version")
  end
end
