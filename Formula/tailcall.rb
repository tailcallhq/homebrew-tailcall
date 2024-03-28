class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.68.6/tailcall-x86_64-apple-darwin"
    sha256 "dd9d43206a400982c40bfb5cc1c7c228d6764425ae4a001459b48139887825c2"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.68.6/tailcall-aarch64-apple-darwin"
    sha256 "303207f9e0b52c2854a76fd81e780ede15f137d031b004c5a15e38ee61ac28f1"
  end

  version "v0.68.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
