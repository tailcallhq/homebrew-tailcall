class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.58.0/tailcall-x86_64-apple-darwin"
    sha256 "ddc3f1f71b3bbfb6ae3eb475506d33bc2c9ddf7155e0374e6cad9ebacfd09586"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.58.0/tailcall-aarch64-apple-darwin"
    sha256 "96f208d6f9cb6cf09f35720a844400f8ecc11cba5297dbbbcd5b1fc085cc1840"
  end

  version "v0.58.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
