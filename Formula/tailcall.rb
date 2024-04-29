class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.78.10/tailcall-x86_64-apple-darwin"
    sha256 "19c8c647eb4f0aab546b424d1fbeb42b56fd1a6ec9a863814886ac366abe940b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.78.10/tailcall-aarch64-apple-darwin"
    sha256 "e3c55fab6d265b38aee204792f4f2374f8977f00053c86ecf14a7017a029e677"
  end

  version "v0.78.10"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
