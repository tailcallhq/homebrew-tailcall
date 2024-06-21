class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.91.4/tailcall-x86_64-apple-darwin"
    sha256 "864a397b82e39b8c8de1bf1c2634b2896f269ed17fb9115406d9ea51d781b7ce"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.91.4/tailcall-aarch64-apple-darwin"
    sha256 "7c8201e3c7905b960f23eb31d073e74e4dd12a6d3f47cd1c2a4019af8baf5b8a"
  end

  version "v0.91.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
