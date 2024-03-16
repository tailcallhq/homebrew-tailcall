class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.59.1/tailcall-x86_64-apple-darwin"
    sha256 "56d3d7572eebea9abb093334cb5ba5e9d2abe85e20aba712e8f5e6b6d7261b3e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.59.1/tailcall-aarch64-apple-darwin"
    sha256 "587b8e5c17dc45590f3dece89edc44c3d4d89e1bfde85247a7812746ce5bb3bf"
  end

  version "v0.59.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
