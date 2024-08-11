class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.100.0/tailcall-x86_64-apple-darwin"
    sha256 "2e33b9dbf6357a2b0c95672f3bbee74c0a68db2eb9c14340d6339be8aff1345d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.100.0/tailcall-aarch64-apple-darwin"
    sha256 "36f2059f061871eb4daedb74501bb5719d15d056c864cfed9a21c3e450a07d37"
  end

  version "v0.100.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
