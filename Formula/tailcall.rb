class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.104.9/tailcall-x86_64-apple-darwin"
    sha256 "0fd0b2707abaac6374416f8f6871bd99b40c9cc3cded075b45e4cafd1eafbbe0"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.104.9/tailcall-aarch64-apple-darwin"
    sha256 "ccc3578a1428a5d597b1947b72f938ddc9c7823e562d54cdb835859ae3c972db"
  end

  version "v0.104.9"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
