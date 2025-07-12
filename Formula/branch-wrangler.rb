class BranchWrangler < Formula
  desc "Cross-platform TUI for managing local Git branches with GitHub integration"
  homepage "https://github.com/dfinster/branch-wrangler"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.5/branch-wrangler-v0.0.5-darwin-arm64"
      sha256 "419730d818783daed869e07b7df1216bc0199000368028177f5b56c2986a77f5"
    end

    on_intel do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.5/branch-wrangler-v0.0.5-darwin-amd64"
      sha256 "eed6063091a594c5668359c80949d970005296597f1dab7a8d0a6e197ebfaffc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.5/branch-wrangler-v0.0.5-linux-arm64"
      sha256 "9b52b6fa514141e9c1d4267cd559c8be376399657e28f3ded635e1add01b72b9"
    end

    on_intel do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v0.0.5/branch-wrangler-v0.0.5-linux-amd64"
      sha256 "a16c0323b6cefa84f463177abc936098afd7828fcf919ee14cda4cf2fea0156e"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "branch-wrangler-v0.0.5-darwin-arm64" => "branch-wrangler"
      else
        bin.install "branch-wrangler-v0.0.5-darwin-amd64" => "branch-wrangler"
      end
    else
      if Hardware::CPU.arm?
        bin.install "branch-wrangler-v0.0.5-linux-arm64" => "branch-wrangler"
      else
        bin.install "branch-wrangler-v0.0.5-linux-amd64" => "branch-wrangler"
      end
    end
  end

  test do
    system "#{bin}/branch-wrangler", "--version"
  end
end
