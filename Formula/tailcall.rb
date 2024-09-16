class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.9/tailcall-x86_64-apple-darwin"
    sha256 "31c5f89b9763e533c663b4fd58bf31661448c98a78fab5d58d27706e96494e02"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.9/tailcall-aarch64-apple-darwin"
    sha256 "2223de09e9bafe2602e92455a50713948b52db7407c761a7ca22d6150dcb94e2"
  end

  version "v0.111.9"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
