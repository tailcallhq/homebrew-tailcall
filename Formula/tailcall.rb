class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.106.1/tailcall-x86_64-apple-darwin"
    sha256 "f8a19140f0df78779e7e298f7b26ac9468934e52bafbd65a11ba06f7782fddea"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.106.1/tailcall-aarch64-apple-darwin"
    sha256 "8dcb7f730771eb5b6a33624ebbf863ff8ac936bbcbcfb221988a3a45273dfa28"
  end

  version "v0.106.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
