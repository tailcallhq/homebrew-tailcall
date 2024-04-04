class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.74.1/tailcall-x86_64-apple-darwin"
    sha256 "6db4245cea745ed68e56983cfad1f3da1a4f6e380c1c21233e5c17fb3fee2f6a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.74.1/tailcall-aarch64-apple-darwin"
    sha256 "8baf7451dde493f7741d32bce805a5964605578494665f10ea41995a71a99a49"
  end

  version "v0.74.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
