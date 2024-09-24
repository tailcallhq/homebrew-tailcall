class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.114.0/tailcall-x86_64-apple-darwin"
    sha256 "6ee6b0ab1c20db0934751aa8ef329c2985099f7f24da3a16456959f6565ab582"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.114.0/tailcall-aarch64-apple-darwin"
    sha256 "8b7354d7434ccff132a75ae301121826f30c720b9a67caa4550608de88ff73e5"
  end

  version "v0.114.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
