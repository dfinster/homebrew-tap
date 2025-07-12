class BranchWrangler < Formula
  desc "Cross-platform TUI for managing local Git branches with GitHub integration"
  homepage "https://github.com/dfinster/branch-wrangler"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.6/branch-wrangler-v0.0.6-darwin-arm64"
      sha256 "d5a4394fbf4952641b29561c86a29cd3b5920c95905657a4db7466d6dcbe0979"
    end

    on_intel do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.6/branch-wrangler-v0.0.6-darwin-amd64"
      sha256 "c0b2ddf02d6b66daacbb475ca984adc44d06c7641d81205c30da19bb9152c27b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.6/branch-wrangler-v0.0.6-linux-arm64"
      sha256 "c4d0574dc168d3c695f9be70c57d0ff4768d6ad54fa09f545ab5d22933c27b00"
    end

    on_intel do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.6/branch-wrangler-v0.0.6-linux-amd64"
      sha256 "2f346d76b7e39a7548199d7c6165691d8dcd0878a228760d230495fa7a83bb81"
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "branch-wrangler-v0.0.6-darwin-arm64" => "branch-wrangler"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "branch-wrangler-v0.0.6-darwin-amd64" => "branch-wrangler"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "branch-wrangler-v0.0.6-linux-arm64" => "branch-wrangler"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "branch-wrangler-v0.0.6-linux-amd64" => "branch-wrangler"
    end
  end

  test do
    system bin/"branch-wrangler", "--version"
  end
end

