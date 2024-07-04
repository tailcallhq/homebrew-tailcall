class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.4/tailcall-x86_64-apple-darwin"
    sha256 "96b639545f8e5026966353dcb400b064c249865f832db03492732ccb3332a170"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.4/tailcall-aarch64-apple-darwin"
    sha256 "2b670435ff0948ee1b20bb3ea495cad2d960cd2c9307ff61106ccda2c4898443"
  end

  version "v0.95.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
