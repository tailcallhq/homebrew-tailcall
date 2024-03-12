class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.49.2/tailcall-x86_64-apple-darwin"
    sha256 "115ba57564056349aabcad615dd60aed0b2bdeb1f338bfb834a64afc2cc89f36"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.49.2/tailcall-aarch64-apple-darwin"
    sha256 "89ae41f0ce23214372901538a737e7552dd4bf2262829d9cd2dab78204ff12c5"
  end

  version "v0.49.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
