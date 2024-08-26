class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.105.0/tailcall-x86_64-apple-darwin"
    sha256 "3e1f7862133910b9b8d4b01f2d05e4392de3caa4f9af1a78bd0547249fb92344"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.105.0/tailcall-aarch64-apple-darwin"
    sha256 "a1329d8844d858918dae624103db0363ca52fda55037422c6befd51363c3df5a"
  end

  version "v0.105.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
