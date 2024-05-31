class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.85.0/tailcall-x86_64-apple-darwin"
    sha256 "2d553c7c8afc80b5d040a01cf8e87f264ca8eee3081c7c7230883797d2b775da"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.85.0/tailcall-aarch64-apple-darwin"
    sha256 "3888df05e8c03700636d508b1156430fdd0faad6bd42fb2573d22cd5ac5ffd1b"
  end

  version "v0.85.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
