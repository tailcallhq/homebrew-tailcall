class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.1/tailcall-x86_64-apple-darwin"
    sha256 "66962675df68b50d3934ca72503846eb9377b14ac12396f6441f0c34f2e95379"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.1/tailcall-aarch64-apple-darwin"
    sha256 "8a762e22d6ffc3654d56a0ce2b140d1d83199c70a0a432e3ea29f31329d9ec3a"
  end

  version "v0.111.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
