class BranchWrangler < Formula
  desc "Cross-platform TUI for managing local Git branches with GitHub integration"
  homepage "https://github.com/dfinster/branch-wrangler"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dfinster/branch-wrangler/releases/download/v#{version}/branch-wrangler-v#{version}-darwin-arm64"
      sha256 "af65e69520a86c1cd47c1a8702327db68a57f917a5e94be7631cdff4841da8b1"
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