class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.128.1/tailcall-x86_64-apple-darwin"
    sha256 "edc339558c3726de5207c89ccd1738d59e2016d3bd8520bdc3f65bc7d1f7f6be"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.128.1/tailcall-aarch64-apple-darwin"
    sha256 "4b3918db9f96e9f423c6284bbef9f8b61516ec45aac5453cb6b77c6c475f1b5d"
  end

  version "v0.128.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
