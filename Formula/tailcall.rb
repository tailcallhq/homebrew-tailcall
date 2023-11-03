class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.14.4/tailcall-x86_64-apple-darwin"
    sha256 "aaaa41b50258efa750c3e2ea25eea36fc7929a5157f78a0e4f474be4892f85cf"
  elsif Hardware::CPU.arm?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.14.4/tailcall-aarch64-apple-darwin"
    sha256 "caa271f9d4a40e0ebebfce6c5e21f946b6d540240b579b08ed107837d1eb485d"
  end

  version "v0.14.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tc"
  end
end
