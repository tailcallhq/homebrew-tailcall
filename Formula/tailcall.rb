class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.104.6/tailcall-x86_64-apple-darwin"
    sha256 "9b1cd5c1353c83b8ec42fcbaa1efa7f2eee8ed32f62f5abe73237e536b0be755"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.104.6/tailcall-aarch64-apple-darwin"
    sha256 "ca625c6282876f8325ffcb0f56ddf84813b7e14888224a64f1cee62073198fa9"
  end

  version "v0.104.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
