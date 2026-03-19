class SparkyCli < Formula
  desc "CLI for SparkyFitness — log food, exercise, and biometrics from your terminal"
  homepage "https://github.com/aronjanosch/sparky-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aronjanosch/sparky-cli/releases/download/v0.1.0/sparky_0.1.0_darwin_amd64.tar.gz"
      sha256 "ff8211fcd64724bad0a2a674019ecc1d055569c0bd4cbe029879c575c8ee972c"
    end
    on_arm do
      url "https://github.com/aronjanosch/sparky-cli/releases/download/v0.1.0/sparky_0.1.0_darwin_arm64.tar.gz"
      sha256 "a58144ba5d0a061e820b6b4df236a13f546b1314afe710cb008ccee54276505e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aronjanosch/sparky-cli/releases/download/v0.1.0/sparky_0.1.0_linux_amd64.tar.gz"
      sha256 "ef0152db985d75d1b65b43575c959f276c70686b792d8c9ba2c05c47c9396ff4"
    end
    on_arm do
      url "https://github.com/aronjanosch/sparky-cli/releases/download/v0.1.0/sparky_0.1.0_linux_arm64.tar.gz"
      sha256 "4b5cfbee8b0481ef75dde4f132e7a7ce8a22fe91f11fe7d46d7144871e764bb3"
    end
  end

  def install
    bin.install "sparky"
  end

  test do
    system "#{bin}/sparky", "--version"
  end
end
