class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.30.0/tailcall-x86_64-apple-darwin"
    sha256 "b2f1abbad30084926c3183cefb945f6e904572a6eb69a5ac2cb155386b68937a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.30.0/tailcall-aarch64-apple-darwin"
    sha256 "8b92ed933553fcfdd24a35ef39a5ed53bfd2a132496e78830dca635092a6ccd1"
  end

  version "v0.30.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
