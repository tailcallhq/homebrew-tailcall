class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.9/tailcall-x86_64-apple-darwin"
    sha256 "b34f5f90657a9179adb063ec3877bf3a2a87e0b2e593c8c62e063a18a671219b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.9/tailcall-aarch64-apple-darwin"
    sha256 "59418e66f45de65319a9b33321b90435d8d027a5f53ec7f723ddc4246dd413b8"
  end

  version "v0.82.9"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
