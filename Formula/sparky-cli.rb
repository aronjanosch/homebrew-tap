class SparkyCli < Formula
  desc "CLI for SparkyFitness - log food, exercise, and biometrics from your terminal"
  homepage "https://github.com/aronjanosch/sparky-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aronjanosch/sparky-cli/releases/download/v0.2.2/sparky_0.2.2_darwin_arm64.tar.gz"
      sha256 "05f1c297675af759ec33f804e9f2069e675a30b45c1c7ccb3ff2d97746cd25d7"
    else
      url "https://github.com/aronjanosch/sparky-cli/releases/download/v0.2.2/sparky_0.2.2_darwin_amd64.tar.gz"
      sha256 "c6de13ac1bd907007144030513726653b722c69d35f55744ab541d7a010e9c4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aronjanosch/sparky-cli/releases/download/v0.2.2/sparky_0.2.2_linux_arm64.tar.gz"
      sha256 "134f922845054660618d0a1a88fae0f578e6fbb1c9de59f00e446a8a83d86a41"
    else
      url "https://github.com/aronjanosch/sparky-cli/releases/download/v0.2.2/sparky_0.2.2_linux_amd64.tar.gz"
      sha256 "157603253297d609eb32bbb009275b51ec97b842b160931a206d036e8e98d6a3"
    end
  end

  def install
    bin.install "sparky"
  end

  test do
    system "#{bin}/sparky", "--version"
  end
end
