class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.127.0/tailcall-x86_64-apple-darwin"
    sha256 "2ea97f475746e401bf45ac858ec71284da741d05d4d68d5003ea71160eb4eba7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.127.0/tailcall-aarch64-apple-darwin"
    sha256 "bc778cb9823526d88a091b2ba67aa0dda9c8f09e29cac7e1702bba4fedc14a64"
  end

  version "v0.127.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
