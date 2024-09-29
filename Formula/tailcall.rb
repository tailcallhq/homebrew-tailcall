class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.116.0/tailcall-x86_64-apple-darwin"
    sha256 "fc51216fedd743b6882a5e295987da22a185f5785342a22a3472c5883a602032"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.116.0/tailcall-aarch64-apple-darwin"
    sha256 "599babc5e6da702f33f758daa856888e31ff51d33dfbf641e4ad3cf0f9ca8fb2"
  end

  version "v0.116.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
