class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.6/tailcall-x86_64-apple-darwin"
    sha256 "c062be03715d122d8fc00d4883859501328ed7eacb8eecc29ab3402dcd1d08d3"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.6/tailcall-aarch64-apple-darwin"
    sha256 "a5c91e47b1b4df1d1d2340d4a4113614802d7006dd1652c25ec2837b5573db9f"
  end

  version "v0.95.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
