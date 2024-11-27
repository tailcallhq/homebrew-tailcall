class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.131.0/tailcall-x86_64-apple-darwin"
    sha256 "3d9b52921be58dc4bd489d3aad569cdd77cfc2819bc9eb53cb9b1371537c18d1"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.131.0/tailcall-aarch64-apple-darwin"
    sha256 "52afd8858ae6fd6e14dd385e649cbb84b894d3d94c2030d6da33f793f66aaeb2"
  end

  version "v0.131.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
