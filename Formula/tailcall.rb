class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.93.3/tailcall-x86_64-apple-darwin"
    sha256 "14b86d47d5ebcdcdd15d6ae6fefb845aa0966ce52023b9a6ed46411276b22984"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.93.3/tailcall-aarch64-apple-darwin"
    sha256 "e03307aa197b7b6fb264ced075d9e779e8fcef9a0145648fe19c6f489dd3beff"
  end

  version "v0.93.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
