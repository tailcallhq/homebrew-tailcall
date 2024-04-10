class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.74.10/tailcall-x86_64-apple-darwin"
    sha256 "c2f48af6a231f4ec0957ec1fc26c5c24eb2358f07fbf2edf7d413e7677237bad"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.74.10/tailcall-aarch64-apple-darwin"
    sha256 "d86f0b3bcb85a53219e45c367ca2cfc0467222f1f072d4f70abfee42d0dcb0a5"
  end

  version "v0.74.10"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
