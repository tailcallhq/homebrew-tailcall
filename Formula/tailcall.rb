class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.10/tailcall-x86_64-apple-darwin"
    sha256 "f5bf76f6f64527d8fcd93e69f0c45773aaf9deedc3d521c46afedc2f5bcf48c3"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.10/tailcall-aarch64-apple-darwin"
    sha256 "740f19f8f825d6e211b1d436885f5d91f581b82dfb976f9be6e6fe85e36c99a9"
  end

  version "v0.111.10"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
