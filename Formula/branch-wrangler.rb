class BranchWrangler < Formula
  desc "Cross-platform TUI for managing local Git branches with GitHub integration"
  homepage "https://github.com/dfinster/branch-wrangler"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.4/branch-wrangler-v0.0.4-darwin-arm64"
      sha256 "bf7c743e3ff25e2937f51964c46e33ca9efbc412c01fb989372e95465983bc02"
    end

    on_intel do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.4/branch-wrangler-v0.0.4-darwin-amd64"
      sha256 "4147a31b3833a1763fc1c0c52037d9675cdbefeaedae03f558f327a3d6bc39fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.4/branch-wrangler-v0.0.4-linux-arm64"
      sha256 "9b987b1e8271db872a6b2e236a92435560a22f1371b0c8359175e0fb2799f537"
    end

    on_intel do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.4/branch-wrangler-v0.0.4-linux-amd64"
      sha256 "e9a53607cf02571dcd216d04adee5b3a801bb890f7ac8509834f56a573f60214"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "branch-wrangler-v0.0.4-darwin-arm64" => "branch-wrangler"
      else
        bin.install "branch-wrangler-v0.0.4-darwin-amd64" => "branch-wrangler"
      end
    else
      if Hardware::CPU.arm?
        bin.install "branch-wrangler-v0.0.4-linux-arm64" => "branch-wrangler"
      else
        bin.install "branch-wrangler-v0.0.4-linux-amd64" => "branch-wrangler"
      end
    end
  end

  test do
    system "#{bin}/branch-wrangler", "--version"
  end
end
