class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.21.1/tailcall-x86_64-apple-darwin"
    sha256 "d80aefe2aa5d8c44d1614c52913556ef21262b5c7c7aae2f9beb0edb167c0d0d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.21.1/tailcall-aarch64-apple-darwin"
    sha256 "cf094f5a8c4672866b02281c259e9ecd6e3c4e6922b9c3c837a40f9e88352cce"
  end

  version "v0.21.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
