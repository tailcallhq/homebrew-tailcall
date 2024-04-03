class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.74.0/tailcall-x86_64-apple-darwin"
    sha256 "a3f3c0331019c2b7a3feb81d1756b79524fa396ac1f4933fbbe1390e774281b0"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.74.0/tailcall-aarch64-apple-darwin"
    sha256 "11179d4218922f534cadc72f057d4a959f31227ba3579729e91a61a02a529ea4"
  end

  version "v0.74.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
