class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.74.6/tailcall-x86_64-apple-darwin"
    sha256 "3696931acc875676dde07ec6119bb4531afb7bc3c994ada6538c72da643f4dac"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.74.6/tailcall-aarch64-apple-darwin"
    sha256 "9b49d657396c96efb7f75aad85475e4ac1d836cab210fdf4c749400d00e8001b"
  end

  version "v0.74.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
