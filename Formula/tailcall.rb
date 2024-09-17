class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.13/tailcall-x86_64-apple-darwin"
    sha256 "bcfe36e36f169bbf45d34b0871552500fb3fefdcd27070b027e0bd110ccaf34a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.13/tailcall-aarch64-apple-darwin"
    sha256 "f1227f8d3c1bda8e86f12558af46ccea25c36adaa7602fa35e97774fda205044"
  end

  version "v0.111.13"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
