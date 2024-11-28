class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.131.2/tailcall-x86_64-apple-darwin"
    sha256 "b75ca59bb7df4026244025c9019c4fb97534a1129a946dbb7b726789a9c4b71b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.131.2/tailcall-aarch64-apple-darwin"
    sha256 "46355699f397701546b1ad5da5e1652a07f5fc8031589779bec119d149820eb5"
  end

  version "v0.131.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
