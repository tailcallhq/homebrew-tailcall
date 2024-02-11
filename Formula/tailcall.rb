class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.37.4/tailcall-x86_64-apple-darwin"
    sha256 "e2af5c613f6089e88de24ad22052d43a6a01dbfdbfa12c5b00dc50b0d1370fe7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.37.4/tailcall-aarch64-apple-darwin"
    sha256 "d2f9bfb933540e06fdddb2b95bdc6619312df3495c370237bf6a8ada64f28d5e"
  end

  version "v0.37.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
