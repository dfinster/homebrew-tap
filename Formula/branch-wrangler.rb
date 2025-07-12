class BranchWrangler < Formula
  desc "Cross-platform TUI for managing local Git branches with GitHub integration"
  homepage "https://github.com/dfinster/branch-wrangler"
  version "0.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.9/branch-wrangler-v0.0.9-darwin-arm64"
      sha256 "740e20f1eb3a84f587c1947fd8d7d65f7e3ac33b3fec7576e8364eae5fa5a599"
    end

    on_intel do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.9/branch-wrangler-v0.0.9-darwin-amd64"
      sha256 "efdbfddd7a5986ebdf329f3726ff754b985d7259d91b5ec6329bbc46484de729"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.9/branch-wrangler-v0.0.9-linux-arm64"
      sha256 "658dcacebe0d779981145f9a109039268445783fd277bcb47206a688951b20ad"
    end

    on_intel do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.9/branch-wrangler-v0.0.9-linux-amd64"
      sha256 "5627d50fcab686e50798df352fcb5ffda83db411ab0714a6d3acd53e4e82a39c"
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "branch-wrangler-v0.0.9-darwin-arm64" => "branch-wrangler"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "branch-wrangler-v0.0.9-darwin-amd64" => "branch-wrangler"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "branch-wrangler-v0.0.9-linux-arm64" => "branch-wrangler"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "branch-wrangler-v0.0.9-linux-amd64" => "branch-wrangler"
    end
  end

  test do
    system bin/"branch-wrangler", "--version"
  end
end

