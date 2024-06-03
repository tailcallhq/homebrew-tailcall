class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.85.5/tailcall-x86_64-apple-darwin"
    sha256 "e24ed5be9a961b7ad1009f2694e640e04c611dfd2a15578ed7ee87a155cad841"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.85.5/tailcall-aarch64-apple-darwin"
    sha256 "2cb816cc7f4316cea55397fa515755b1f9cb0035ac5be99b23ea99e30608b75a"
  end

  version "v0.85.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
