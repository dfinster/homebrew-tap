class BranchWrangler < Formula
  desc "Cross-platform TUI for managing local Git branches with GitHub integration"
  homepage "https://github.com/dfinster/branch-wrangler"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.1.3/branch-wrangler-v0.1.3-darwin-arm64"
      sha256 "4e6823ba1d7dc2336b8cb635963e2057bf0f0aaee584978e79707008281e1e26"
    end

    on_intel do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.1.3/branch-wrangler-v0.1.3-darwin-amd64"
      sha256 "3f97038c57e484f162733f6e3e50a6a2d640d8b387f22ca830da866546443e51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.1.3/branch-wrangler-v0.1.3-linux-arm64"
      sha256 "b2589f66c57edbf97ce0397f06e78f203525098a3db3c10800212711f0acab9c"
    end

    on_intel do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.1.3/branch-wrangler-v0.1.3-linux-amd64"
      sha256 "48954703d144c50a65e6e9c20d1908edb64ecb4738bb341d1cc0ffd44f0677d0"
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "branch-wrangler-v0.1.3-darwin-arm64" => "branch-wrangler"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "branch-wrangler-v0.1.3-darwin-amd64" => "branch-wrangler"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "branch-wrangler-v0.1.3-linux-arm64" => "branch-wrangler"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "branch-wrangler-v0.1.3-linux-amd64" => "branch-wrangler"
    end
  end

  test do
    system bin/"branch-wrangler", "--version"
  end
end

