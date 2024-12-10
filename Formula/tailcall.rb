class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.1.0/tailcall-x86_64-apple-darwin"
    sha256 "37eef82a83d7890d5db722149a8831bc830739680cb2f1a6fcbdd665c18ca5fb"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.1.0/tailcall-aarch64-apple-darwin"
    sha256 "b62fb844c9fb25e20730d40018ebf1c3b96458cd3716d25bb62bae6750e0abe1"
  end

  version "v1.1.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
