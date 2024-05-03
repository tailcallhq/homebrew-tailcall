class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.80.4/tailcall-x86_64-apple-darwin"
    sha256 "6dc7f3c72e711e3d78c7ca915ffee00e0ed21b3f89d110e58c1d1e9eb72e20e2"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.80.4/tailcall-aarch64-apple-darwin"
    sha256 "4b79d20e6d02ad62118ab1a546b08aeef1e1854420d284749ac1895485985486"
  end

  version "v0.80.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
