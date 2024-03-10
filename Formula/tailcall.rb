class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.47.2/tailcall-x86_64-apple-darwin"
    sha256 "0c2330a13529492fcb1d6e32114e407450e667b7d21a8865a8dd9e9b190fed82"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.47.2/tailcall-aarch64-apple-darwin"
    sha256 "aa4f21590985973112a916c5ad4553f9f3200765e3c5d3b66030dc02b0bbf219"
  end

  version "v0.47.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
