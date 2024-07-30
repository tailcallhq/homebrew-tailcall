class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.6/tailcall-x86_64-apple-darwin"
    sha256 "355a28e1081e61da61d8a13a5e1e7117e22c6c5f839e8f6e81beff4704868cd5"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.6/tailcall-aarch64-apple-darwin"
    sha256 "a01c8c906f88b8ed6e1cc41f7b950c5c2d6857c5f8a9e9a3a9b7da30e7d4a2b4"
  end

  version "v0.99.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
