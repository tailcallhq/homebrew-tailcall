class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.6.7/tailcall-x86_64-apple-darwin"
    sha256 "96b97eab8c886c9b003e6b73246442702c7d81d265cdd17a3a5d44cecdb58e41"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.6.7/tailcall-aarch64-apple-darwin"
    sha256 "232182607def93d746c0bc910084a34e711da314b2b604d9d8c73ae738ee5c3d"
  end

  version "v1.6.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
