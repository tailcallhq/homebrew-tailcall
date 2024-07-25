class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.98.2/tailcall-x86_64-apple-darwin"
    sha256 "7a9c328c4b084a612b0b13ef55d3addb5aaeb0a6a123f4d27face02dac306855"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.98.2/tailcall-aarch64-apple-darwin"
    sha256 "4c4c4318eb3dbdb73af88801bf5f2288310e3d23c51812d3dd74d10727398c52"
  end

  version "v0.98.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
