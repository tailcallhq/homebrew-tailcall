class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.14.10/tailcall-x86_64-apple-darwin"
    sha256 "67edf57bdeaa4e6edfa3c6a5cdb4c8b69acc906e6c04b831cffb7ba98c54124c"
  elsif Hardware::CPU.arm?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.14.10/tailcall-aarch64-apple-darwin"
    sha256 "e717442a7f3509f2c8a691b17ccb32e1f5a2245d3dde4dba7db215f66e7a1592"
  end

  version "v0.14.10"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tc"
  end
end
