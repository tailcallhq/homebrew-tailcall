class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.8/tailcall-x86_64-apple-darwin"
    sha256 "ee7bbaa7993948bcf0141a3ba4fabb5c64c964fa0ec0a71e14b16e5ee0707aad"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.8/tailcall-aarch64-apple-darwin"
    sha256 "1c2c9d351caa8c8d924afeb4da64ed61a9ac7b650a1167cad7190b011c9db857"
  end

  version "v1.4.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
