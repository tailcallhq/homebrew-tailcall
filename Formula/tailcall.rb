class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.68.1/tailcall-x86_64-apple-darwin"
    sha256 "e00a87f2af92acdf2c19ca473a91faded83d04be1a874937ba0a2b6ba135aed4"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.68.1/tailcall-aarch64-apple-darwin"
    sha256 "8cffb69e8bb39844970f512ab504653b6d76d64ad6e2d9dae2424b3db22c4319"
  end

  version "v0.68.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
