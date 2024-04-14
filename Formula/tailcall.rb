class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.75.0/tailcall-x86_64-apple-darwin"
    sha256 "818cb8102859e7586e10e18a139e331da06ddcf391467387d1ec1347696f7cbf"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.75.0/tailcall-aarch64-apple-darwin"
    sha256 "bcd200005775b8266c0beb4247da210311761c68a2701de37601ff0350cc8d5a"
  end

  version "v0.75.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
