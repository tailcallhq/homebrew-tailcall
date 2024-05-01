class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.79.0/tailcall-x86_64-apple-darwin"
    sha256 "6b8879b54dd1d79a2d4cb330975a4f692868cf9d3fd57bab9f8f9f8a320b0b1c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.79.0/tailcall-aarch64-apple-darwin"
    sha256 "39bea936518a2968e75de049819c183e8e4eec0f7c7d21302807c4f79a47d062"
  end

  version "v0.79.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
