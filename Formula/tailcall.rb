class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.38.0/tailcall-x86_64-apple-darwin"
    sha256 "51d8f4789933e37ea5c7495af54aef1c74c7f2fe4121c62303ae9f0b23c16179"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.38.0/tailcall-aarch64-apple-darwin"
    sha256 "e248592994c11aa927787661ca67bdac4fe903f83aef39aceff5c53221e704f6"
  end

  version "v0.38.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
