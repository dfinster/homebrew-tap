class BranchWrangler < Formula
  desc "Cross-platform TUI for managing local Git branches with GitHub integration"
  homepage "https://github.com/dfinster/branch-wrangler"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.1.2/branch-wrangler-v0.1.2-darwin-arm64"
      sha256 "c8b970887aebddfefb0453dbceef92d714b87f6bcadd05d27cb9d59768f54c9e"
    end

    on_intel do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.1.2/branch-wrangler-v0.1.2-darwin-amd64"
      sha256 "d515dde71ac1df1f1b2bfd484dc92a6e605af8fcbed303ca5eb8f4c26eb9eab1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.1.2/branch-wrangler-v0.1.2-linux-arm64"
      sha256 "8685465d8ad3fee0b4698b652bf3241dd948f80bfe34a3cc4e434995825e19b0"
    end

    on_intel do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.1.2/branch-wrangler-v0.1.2-linux-amd64"
      sha256 "f1ad8f9b1194c33df76f2af762ee4f47fdd3a86e03a43bddc474278c5c57c1a5"
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "branch-wrangler-v0.1.2-darwin-arm64" => "branch-wrangler"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "branch-wrangler-v0.1.2-darwin-amd64" => "branch-wrangler"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "branch-wrangler-v0.1.2-linux-arm64" => "branch-wrangler"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "branch-wrangler-v0.1.2-linux-amd64" => "branch-wrangler"
    end
  end

  test do
    system bin/"branch-wrangler", "--version"
  end
end

