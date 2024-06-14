class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.89.1/tailcall-x86_64-apple-darwin"
    sha256 "71455bfed6b736e6d6a8a0f47befd37b5b8e2b0f7f99e9be142f2892bb149e7d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.89.1/tailcall-aarch64-apple-darwin"
    sha256 "669ad01470ae232c25c570c8053fdca33dd5d36151aa9fb25b8f453e33e14253"
  end

  version "v0.89.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
