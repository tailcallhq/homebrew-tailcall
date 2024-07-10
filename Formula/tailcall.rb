class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.17/tailcall-x86_64-apple-darwin"
    sha256 "2d5f766d4e69e528c7c12126ee8391a25565b94b71f2b1a22620a441cc0c7857"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.17/tailcall-aarch64-apple-darwin"
    sha256 "2ea002f0ab0c06607831e45bbfdde1db28ed8a559d20acdd426eb3b828b66dd9"
  end

  version "v0.95.17"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
