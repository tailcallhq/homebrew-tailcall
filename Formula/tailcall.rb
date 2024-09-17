class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.18/tailcall-x86_64-apple-darwin"
    sha256 "cb991de785d9c2e24f30f526fc806d6243f38250df7274abcca44deb27f4dbee"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.18/tailcall-aarch64-apple-darwin"
    sha256 "93b77a74854eb38caa8e8bc3b7e21a7f29a62fefb092f540f69d890768a65bb2"
  end

  version "v0.111.18"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
