class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.121.0/tailcall-x86_64-apple-darwin"
    sha256 "5d6829c173a4fd52b90c8f98fedfa767e74902a3f51c561de46ca2069b5c65b6"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.121.0/tailcall-aarch64-apple-darwin"
    sha256 "62a92bdda1e2dddf505e693969a608470cd3f1f1a1c231ee657b12eadd59b561"
  end

  version "v0.121.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
