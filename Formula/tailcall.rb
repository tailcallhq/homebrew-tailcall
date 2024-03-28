class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.69.0/tailcall-x86_64-apple-darwin"
    sha256 "c6a0cff385834e80827eee122a783e4181687ecd60a5cda428ed779f38162fa3"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.69.0/tailcall-aarch64-apple-darwin"
    sha256 "aa783e0be7b94dc8ea34822cbb000c12ff6b78c301e72a25fe755956455a8861"
  end

  version "v0.69.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
