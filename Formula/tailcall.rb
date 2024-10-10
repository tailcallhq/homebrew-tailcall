class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.120.8/tailcall-x86_64-apple-darwin"
    sha256 "84add5bd74bc71c74b9e9bff7e5af768954ee42a27352d63cd4b0a0baa2468ba"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.120.8/tailcall-aarch64-apple-darwin"
    sha256 "980f8fb6fe2aad156d0ed38d55ec0eeb2aa2fbbbf23d9226c294183cbccba348"
  end

  version "v0.120.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
