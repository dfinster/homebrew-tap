class BranchWrangler < Formula
  desc "Cross-platform TUI for managing local Git branches with GitHub integration"
  homepage "https://github.com/dfinster/branch-wrangler"
  version "0.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.8/branch-wrangler-v0.0.8-darwin-arm64"
      sha256 "5488f7d113d8f4121e4f2b0bbadfbdecac8dd2bba9cd3f71da2acf04cf4a7d99"
    end

    on_intel do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.8/branch-wrangler-v0.0.8-darwin-amd64"
      sha256 "d25f4d76a2082ee10082b87f35042b58d43012a2a0970ac2ed50be7cbc158a1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.8/branch-wrangler-v0.0.8-linux-arm64"
      sha256 "237a4c854b8c20424eae9c82e129be9caaaf8f631d64a2f744a1c4329d7510d5"
    end

    on_intel do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.8/branch-wrangler-v0.0.8-linux-amd64"
      sha256 "d5e8a0e95d51c9a5a95ca7f07fe9a6a3b4ebe4fb2d8c8ba1c645b0365a9b3e6b"
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "branch-wrangler-v0.0.8-darwin-arm64" => "branch-wrangler"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "branch-wrangler-v0.0.8-darwin-amd64" => "branch-wrangler"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "branch-wrangler-v0.0.8-linux-arm64" => "branch-wrangler"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "branch-wrangler-v0.0.8-linux-amd64" => "branch-wrangler"
    end
  end

  test do
    system bin/"branch-wrangler", "--version"
  end
end

