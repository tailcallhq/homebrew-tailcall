class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.121.5/tailcall-x86_64-apple-darwin"
    sha256 "e62a72d9e02647649592cc9de510a91311fdc760f6e3411d944e1272ddd9cd23"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.121.5/tailcall-aarch64-apple-darwin"
    sha256 "70c28383f809f1cda639811891194e93ea4ba25971a0b6771918e9b82bd35666"
  end

  version "v0.121.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
