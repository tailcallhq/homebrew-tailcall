class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.88.1/tailcall-x86_64-apple-darwin"
    sha256 "93331cd32139737d6d3f0ffca47ecb7ea54aafa1b64d1623efc0f4c049f17bb1"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.88.1/tailcall-aarch64-apple-darwin"
    sha256 "a5cf7bb30d312fbf8f1c66bab4eb0258ccb8a58ad113f2fd6d0ca8e51b6613a3"
  end

  version "v0.88.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
