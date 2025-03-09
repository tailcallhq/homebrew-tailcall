class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.5.9/tailcall-x86_64-apple-darwin"
    sha256 "7e98e343ecbd79914456ba2a31e1a13ac6785cc5926fbee65316bd4115849c75"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.5.9/tailcall-aarch64-apple-darwin"
    sha256 "50a82e7a1338f838f19ed8e4d4ddd7b37a4387b7b0192f70ab84b321b9f75e75"
  end

  version "v1.5.9"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
