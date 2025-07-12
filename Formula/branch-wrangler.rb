class BranchWrangler < Formula
  desc "Cross-platform TUI for managing local Git branches with GitHub integration"
  homepage "https://github.com/dfinster/branch-wrangler"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v#{version}/branch-wrangler-v#{version}-darwin-arm64"
      sha256 "e226a45267cd59af948c33762d0e7a3e1bfc1174e7fbe8344a5d338b16298291"
    end

    on_intel do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v#{version}/branch-wrangler-v#{version}-darwin-amd64"
      sha256 "PLACEHOLDER_INTEL_SHA256"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v#{version}/branch-wrangler-v#{version}-linux-arm64"
      sha256 "PLACEHOLDER_LINUX_ARM_SHA256"
    end

    on_intel do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v#{version}/branch-wrangler-v#{version}-linux-amd64"
      sha256 "PLACEHOLDER_LINUX_INTEL_SHA256"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "branch-wrangler-v#{version}-darwin-arm64" => "branch-wrangler"
      else
        bin.install "branch-wrangler-v#{version}-darwin-amd64" => "branch-wrangler"
      end
    else
      if Hardware::CPU.arm?
        bin.install "branch-wrangler-v#{version}-linux-arm64" => "branch-wrangler"
      else
        bin.install "branch-wrangler-v#{version}-linux-amd64" => "branch-wrangler"
      end
    end
  end

  test do
    system "#{bin}/branch-wrangler", "--version"
  end
end