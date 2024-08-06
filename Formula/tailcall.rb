class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.21/tailcall-x86_64-apple-darwin"
    sha256 "b194c6ec317153189233f3b9c5e902191d57024eceda5383df6d5404542ea8b5"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.21/tailcall-aarch64-apple-darwin"
    sha256 "2999d7a2d3d7f72c92ef8d2063d5de1ee5a1c2c7ebb83e1d84cd017e69af4823"
  end

  version "v0.99.21"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
