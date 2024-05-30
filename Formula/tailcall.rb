class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.84.0/tailcall-x86_64-apple-darwin"
    sha256 "374e9c0ee89bb874e0d15be4f1988fb0b078a5027342bf47136f8523244c63c6"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.84.0/tailcall-aarch64-apple-darwin"
    sha256 "86c2bb41d8cea07c180898d7bfb45e19db410cdd5a5392da2649df75e7ecc9ae"
  end

  version "v0.84.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
