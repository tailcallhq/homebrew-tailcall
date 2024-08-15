class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.104.1/tailcall-x86_64-apple-darwin"
    sha256 "c3a6dce221b75b2d4cb660ed7960dd12b53cb607828da62c0511be6601cb87f9"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.104.1/tailcall-aarch64-apple-darwin"
    sha256 "8241685e04f7e7eeb1eb527dd62af241e9fc4471018f7a5a8894cee5aeb519d3"
  end

  version "v0.104.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
