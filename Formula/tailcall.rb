class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.72.1/tailcall-x86_64-apple-darwin"
    sha256 "8f7394bff6e103ea8554e7ec70bcccf2d9cb1efa8addc377cadd87c025fc8b83"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.72.1/tailcall-aarch64-apple-darwin"
    sha256 "713cbbe1951afe6ea12f2c5ea012f95f3589cbb3bc5db32791fedbdbf099f040"
  end

  version "v0.72.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
