class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.129.2/tailcall-x86_64-apple-darwin"
    sha256 "afaff5ab174c809339509e26fdb4d95ed26e6f8ded32beb688417a6e68dbd08e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.129.2/tailcall-aarch64-apple-darwin"
    sha256 "fa3b3dd349d9a189728ece963a9369abe8b1cd3c89000985ee616442231705ed"
  end

  version "v0.129.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
