class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.74.3/tailcall-x86_64-apple-darwin"
    sha256 "b44aa9eac7e813dcc0db0c1a70822065c027d45582c144cc65eb689e32afc6d7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.74.3/tailcall-aarch64-apple-darwin"
    sha256 "842964e6ca49e2f24ab75437e8e98ca8b86d3dd7079bd6252de3f215dec3f497"
  end

  version "v0.74.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
