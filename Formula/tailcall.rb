class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.132.0/tailcall-x86_64-apple-darwin"
    sha256 "5179552260f95e2d0c1eee9a22f3e2fa7fdc22dc7977a593ab837255d46c56ee"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.132.0/tailcall-aarch64-apple-darwin"
    sha256 "aa59ae6152f37a1cedc2326841316d22d629ebb2270246c94c2257e4f1293d5e"
  end

  version "v0.132.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
