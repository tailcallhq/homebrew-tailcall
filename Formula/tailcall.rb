class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.64.4/tailcall-x86_64-apple-darwin"
    sha256 "bbc73105eac3e96a0e0a5a6904374a63208eb530928ac86ae3b66a4d8015a601"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.64.4/tailcall-aarch64-apple-darwin"
    sha256 "8b24039d87ea3115151cff51428b1c26c9eb7ceabeb760e9c4addb622ef8d844"
  end

  version "v0.64.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
