class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.126.0/tailcall-x86_64-apple-darwin"
    sha256 "bbbe67a01fba49f58defede05cb158faa49feb36fdf0ad6f70709eeff24ca5c3"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.126.0/tailcall-aarch64-apple-darwin"
    sha256 "ebb453236a28c18dc9b42745d6670cd31edf21ec9d9b32d2ddcae7fa2971a0f5"
  end

  version "v0.126.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
