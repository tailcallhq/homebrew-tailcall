class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.24.1/tailcall-x86_64-apple-darwin"
    sha256 "2fd033a46fa42b14033ea755b683ddb4ab0c9590a2693cf58a4c3a004bfe7072"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.24.1/tailcall-aarch64-apple-darwin"
    sha256 "2cdb9f598ba4781444ecba816e18eacd0b331c559d7ca45bef6270b14565138a"
  end

  version "v0.24.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
