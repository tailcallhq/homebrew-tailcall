class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.24.0/tailcall-x86_64-apple-darwin"
    sha256 "7c43cd1d3bf232ac002c7bcfec1bb9fdf18bf35589eb1782f20d3c0e7c8b1a46"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.24.0/tailcall-aarch64-apple-darwin"
    sha256 "a289a3a8a25e24889f32eb90b274e958ea371b0c173a7ed7ab35e27835bc3ff8"
  end

  version "v0.24.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
