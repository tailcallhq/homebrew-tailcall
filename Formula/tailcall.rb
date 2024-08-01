class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.14/tailcall-x86_64-apple-darwin"
    sha256 "49abcb4c5741b38987e481b3d3684ae12b1f7a419ff1691ea6bdda3328f7bf8a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.14/tailcall-aarch64-apple-darwin"
    sha256 "fbe79ac235ea7c47f0801192e9548d45d60b5e9e191d2985c0fc88295390c4b3"
  end

  version "v0.99.14"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
