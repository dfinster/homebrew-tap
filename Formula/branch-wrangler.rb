class BranchWrangler < Formula
  desc "Cross-platform TUI for managing local Git branches with GitHub integration"
  homepage "https://github.com/dfinster/branch-wrangler"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.1.0/branch-wrangler-v0.1.0-darwin-arm64"
      sha256 "38d31e048ae011ea31d6f884e1cdc4953e79d187a611ca6617cb261d6be4817f"
    end

    on_intel do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.1.0/branch-wrangler-v0.1.0-darwin-amd64"
      sha256 "5aaca17c62da57566c7954cc49ff25f73bef936ca3b3ba96bcf152f5e432fc70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.1.0/branch-wrangler-v0.1.0-linux-arm64"
      sha256 "187f477f116517528e402493859daa9b6de19a68228139dff66cbae977e44904"
    end

    on_intel do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.1.0/branch-wrangler-v0.1.0-linux-amd64"
      sha256 "e5cf6a1d8d5e9ec6fe461ae8155bd39e2562da9971dd0b53c79cc11246b62d13"
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "branch-wrangler-v0.1.0-darwin-arm64" => "branch-wrangler"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "branch-wrangler-v0.1.0-darwin-amd64" => "branch-wrangler"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "branch-wrangler-v0.1.0-linux-arm64" => "branch-wrangler"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "branch-wrangler-v0.1.0-linux-amd64" => "branch-wrangler"
    end
  end

  test do
    system bin/"branch-wrangler", "--version"
  end
end

