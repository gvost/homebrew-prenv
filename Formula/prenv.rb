class Prenv < Formula
  desc "Lightweight Bash CLI for inspecting, formatting, and debugging your shell environment"
  homepage "https://github.com/gvost/prenv"
  url "https://github.com/gvost/prenv/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "REPLACE_ME"
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
