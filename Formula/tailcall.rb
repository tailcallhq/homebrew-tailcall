class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.74.16/tailcall-x86_64-apple-darwin"
    sha256 "e52f8d78a767b13cb91f69e57c7f323628faecc3882d4780e155ea4d67bb4797"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.74.16/tailcall-aarch64-apple-darwin"
    sha256 "32d6ec4a2e022c9e04ca8dad6d2869061a11ff1794c17cea968837f3b84fb074"
  end

  version "v0.74.16"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
