class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.123.4/tailcall-x86_64-apple-darwin"
    sha256 "5b27098ad7d1c4e6537bd40c0685a80fe6b64f09d9d5bff976b645fe36249d0f"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.123.4/tailcall-aarch64-apple-darwin"
    sha256 "f413d792ddcb6c4535b5a6c1a9db8b9857194f51a0bb4d33a3237dbb3dc25a5b"
  end

  version "v0.123.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
