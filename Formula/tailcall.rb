class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.118.0/tailcall-x86_64-apple-darwin"
    sha256 "69d3d455dae4a8eb1d26bd3922f5914b978302465b09b055cc296568fccdbf88"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.118.0/tailcall-aarch64-apple-darwin"
    sha256 "701e745d0459532ddfd9c6ffedfcb4dc6f8d2cf3893ea49569581069833e0281"
  end

  version "v0.118.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
