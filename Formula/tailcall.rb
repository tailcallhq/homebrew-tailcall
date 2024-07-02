class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.0/tailcall-x86_64-apple-darwin"
    sha256 "5521ffccc067e66c8e1434baca91a17f3a8c253250397b7aefe0b8918979109b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.0/tailcall-aarch64-apple-darwin"
    sha256 "27c7f2bdaffb4caa931aee2eabdc4027609206771f7ff6dfb34991b709d22159"
  end

  version "v0.95.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
