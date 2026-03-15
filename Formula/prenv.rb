class Prenv < Formula
  desc "Lightweight Bash CLI for inspecting, formatting, and debugging your shell environment"
  homepage "https://github.com/gvost/prenv"
  url "https://github.com/gvost/prenv/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5abbb34847446a5c0a89121c4dae311854dd1d44764fa73bb3b73f7beb7010c3"
  license "MIT"

  def install
    bin.install "prenv"
    prefix.install_metafiles
  end

  test do
    output = shell_output("#{bin}/prenv doctor")
    assert_match "environment diagnostics", output
  end
end
