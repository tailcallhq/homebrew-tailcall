class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.21/tailcall-x86_64-apple-darwin"
    sha256 "3c8b43e012022c8690df583d0a98f0a134f36db34172578e2fc25739d4cea3d2"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.21/tailcall-aarch64-apple-darwin"
    sha256 "6f2fcf0dcd7ca1f9bb3b657fd1d242261495be3541b68bf85a29f65cdcf95440"
  end

  version "v0.82.21"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
