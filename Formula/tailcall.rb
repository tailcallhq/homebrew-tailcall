class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.41.0/tailcall-x86_64-apple-darwin"
    sha256 "f258fc8b7a8f8e39b1a38ba916986adc8faae1d7f16ea12795ff809c2555f0e8"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.41.0/tailcall-aarch64-apple-darwin"
    sha256 "4c68923a554f2357361c8874f1d05d83b613e1bc26773db0c2145bd468a0dbcd"
  end

  version "v0.41.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
