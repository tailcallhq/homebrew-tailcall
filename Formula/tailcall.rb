class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.48.1/tailcall-x86_64-apple-darwin"
    sha256 "58a6c0463997d54d7ad75a03dc9bdae5b5ea0111792ec35c4e1534962c865820"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.48.1/tailcall-aarch64-apple-darwin"
    sha256 "0c529812e1ae7f88705d0920e1fcf3a376e33242d48b22be5da9bfcc5f9643f5"
  end

  version "v0.48.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
