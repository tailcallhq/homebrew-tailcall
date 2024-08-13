class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.103.0/tailcall-x86_64-apple-darwin"
    sha256 "15c6a96a8d0d9174b57ab822614c63b12eeaf064e19f29b6203cc0ab6afdd39a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.103.0/tailcall-aarch64-apple-darwin"
    sha256 "e60a3276fcfe9d4bab5f01dfa851ab87c9e1df58c36b689933d7ee89bff14815"
  end

  version "v0.103.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
