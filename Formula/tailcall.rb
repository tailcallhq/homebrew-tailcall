class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.70.1/tailcall-x86_64-apple-darwin"
    sha256 "d7a561671d88645244bc6f77c66916bc4bc2d563dc0972c85bdb60d59a976783"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.70.1/tailcall-aarch64-apple-darwin"
    sha256 "af24198a491cfcd1a7eedd63582bcaee8ced1744b790effb88dd47e8b466a76e"
  end

  version "v0.70.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
