class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.39.7/tailcall-x86_64-apple-darwin"
    sha256 "e9d5c9871430b7a4ea0a3c10105fefbbaeb58914caff1fa00f6b27e4a2449063"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.39.7/tailcall-aarch64-apple-darwin"
    sha256 "c75556793d87b18202059e333ac07004ba4b3e0335d19a46078e380e9c94f108"
  end

  version "v0.39.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
