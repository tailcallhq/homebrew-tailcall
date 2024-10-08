class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.120.7/tailcall-x86_64-apple-darwin"
    sha256 "54da3aa931a6950a1041e69c0b8fe0d69755ab7ab9d8fc49e9de7880ce01eacc"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.120.7/tailcall-aarch64-apple-darwin"
    sha256 "bc418f547c54534a2ed7bb2953cc543a1fdabae75ef5393ec9e1b8b24568bf2b"
  end

  version "v0.120.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
