class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.92.7/tailcall-x86_64-apple-darwin"
    sha256 "3cfb37fba25f876b5f3a9235a276d750a4dd1b9fba5def8d6be7e8b426f51b42"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.92.7/tailcall-aarch64-apple-darwin"
    sha256 "57e7f750439f8b0cc9867de9db47f36f2eb1f614a6ea0a38fa775785e18540cb"
  end

  version "v0.92.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
