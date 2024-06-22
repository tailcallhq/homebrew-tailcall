class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.92.2/tailcall-x86_64-apple-darwin"
    sha256 "be347675ffb47ddecd1db073dcf28236044d50044655cfee874a7f71f5778a01"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.92.2/tailcall-aarch64-apple-darwin"
    sha256 "558cc06688f511b8c5bfc6974679a856f2c55b710f7663f96b0da4fb036403e9"
  end

  version "v0.92.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
