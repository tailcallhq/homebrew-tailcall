class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.68.7/tailcall-x86_64-apple-darwin"
    sha256 "7ee17901347a0a874e9a86d22c981d9e03e18251d2c9e772e8f89ad5c1dc5c65"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.68.7/tailcall-aarch64-apple-darwin"
    sha256 "39af1dd37f125b32bfb2d1c473bf1c95fba09a1f5edbfaaec3e931fbcb31ae91"
  end

  version "v0.68.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
