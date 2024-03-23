class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.67.0/tailcall-x86_64-apple-darwin"
    sha256 "80c7de1d4ee76e50b28db5150535e1cd5b4df0fbd48aa3a3772c564d0e4ef018"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.67.0/tailcall-aarch64-apple-darwin"
    sha256 "e81234e226dc39f815ad18d3327eb109ae3ba7f9d58b8b962051e29a83d42a9c"
  end

  version "v0.67.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
