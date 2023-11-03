class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.14.3/tailcall-x86_64-apple-darwin"
    sha256 "e479a4018f7e2bb50180d5c2691d6c08cf92e6e7c7cfca690c3287be07da4fef"
  elsif Hardware::CPU.arm?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.14.3/tailcall-aarch64-apple-darwin"
    sha256 "282b6e4929a8d36f77bd54b13a38703e9508ed962ff69732c1fbbb13748676e1"
  end

  version "v0.14.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tc"
  end
end
