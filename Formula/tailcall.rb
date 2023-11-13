class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.15.0/tailcall-x86_64-apple-darwin"
    sha256 "5835cd46f10ce4172981ee63e1444c7f3c16f69c88d851cca822f3bccbce5610"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.15.0/tailcall-aarch64-apple-darwin"
    sha256 "914c3db5a902ed4bb9c5bdd451ac6fcf7a814027015f2faeaed73bd2ed7b739c"
  end

  version "v0.15.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tc"
  end
end
