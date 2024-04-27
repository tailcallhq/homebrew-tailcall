class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.78.4/tailcall-x86_64-apple-darwin"
    sha256 "40273ff0a13daf05593963a95aef84a89fb6acbe49b7044dcd5509ad8076228b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.78.4/tailcall-aarch64-apple-darwin"
    sha256 "67568605b5638a28c9e861a9346d3151be95cd9f9a827a3ff37c68fe5fb6ed9d"
  end

  version "v0.78.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
