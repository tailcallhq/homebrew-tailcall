class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.91.7/tailcall-x86_64-apple-darwin"
    sha256 "83b0ae43b7ae1df9b2562e199cd98707e33cfda936c4f0fd84fc71627adde6be"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.91.7/tailcall-aarch64-apple-darwin"
    sha256 "f7c8f71895304a8b201dbd15a65e27d9962860118cfd224c2333a2ea9e04aeaf"
  end

  version "v0.91.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
