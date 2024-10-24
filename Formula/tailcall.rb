class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.122.5/tailcall-x86_64-apple-darwin"
    sha256 "32e6abbef33b029a1c7da3b91cecec0f0149c68c21b3335e5f4895220473d737"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.122.5/tailcall-aarch64-apple-darwin"
    sha256 "d3b492ee4c297e4d53df13e22deb509f13518f31c0ff32f024e2106c8756929d"
  end

  version "v0.122.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
