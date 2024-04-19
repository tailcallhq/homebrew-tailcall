class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.76.6/tailcall-x86_64-apple-darwin"
    sha256 "1ef40d7963e231832077f39cb4b659e8b820dfd5df2ef463cc098a6d5bcb5f73"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.76.6/tailcall-aarch64-apple-darwin"
    sha256 "cd79ddfc8bbc635e349c2e72292d1405206338e1e234d44e3901d3ff3c74770f"
  end

  version "v0.76.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
