class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.8/tailcall-x86_64-apple-darwin"
    sha256 "d6b835c59c7d4bd94df830e06bc293546dc184825de8970ce9f0cb9119cef6e7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.8/tailcall-aarch64-apple-darwin"
    sha256 "20c4e9952e4bf89ce880f384ab150ec7d697f0ac6c9024ed1ae61e25db563efa"
  end

  version "v0.82.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
