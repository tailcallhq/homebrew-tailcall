class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.134.0/tailcall-x86_64-apple-darwin"
    sha256 "d3937783b70ed6e72c03d5a7acaa268196477ecbbf8edbf408d27f753f39f94c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.134.0/tailcall-aarch64-apple-darwin"
    sha256 "1fac08de7f376691b24e4ce7096fb4b491307dc264d67da6bda1f659d1a20411"
  end

  version "v0.134.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
