class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.68.0/tailcall-x86_64-apple-darwin"
    sha256 "be889871a5b18e6a491e39fb58d082af86085f21e4b59748c67cf165bad72fb0"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.68.0/tailcall-aarch64-apple-darwin"
    sha256 "9b3e2aef2fb03ac8eaec8a8ee23330c5ad273084c9884f3c3bc4df690ee73432"
  end

  version "v0.68.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
