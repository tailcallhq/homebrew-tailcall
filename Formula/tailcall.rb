class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.121.11/tailcall-x86_64-apple-darwin"
    sha256 "ba3d85619bd5d3a9aa6a0b2e0ab721b89bd5fdf56028f67e86d08c11e563bce5"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.121.11/tailcall-aarch64-apple-darwin"
    sha256 "fe450eb4abd3dc4d6308e7d84dc0dcccb66c68520cc38bcd4259bdfa18839f00"
  end

  version "v0.121.11"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
