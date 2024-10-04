class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.118.3/tailcall-x86_64-apple-darwin"
    sha256 "144c730ba14c79cedd9237a6b1bc2b0a084c774ad352687577388d2ffb03b832"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.118.3/tailcall-aarch64-apple-darwin"
    sha256 "577db169658567cddc9dae3c99f37d697599b86ff7f3949a7bf4004373322dc8"
  end

  version "v0.118.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
