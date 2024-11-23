class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.128.0/tailcall-x86_64-apple-darwin"
    sha256 "77fac8f300472ba5f2db449150fbe3b57f541e177a73a68315c067c8b912b3b8"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.128.0/tailcall-aarch64-apple-darwin"
    sha256 "f912a91b6ff423e55742d2e85427f73bec1c267efb8c5e7d3847e4b7747e09e4"
  end

  version "v0.128.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
