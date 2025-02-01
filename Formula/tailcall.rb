class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.22/tailcall-x86_64-apple-darwin"
    sha256 "e38267da00ad95895638aa1fa118821cc6c04b85e9f439f325302252a317a1ba"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.22/tailcall-aarch64-apple-darwin"
    sha256 "3960ec70836ed8128f5be1dfb11a7a1cbe4e0679add204f71310e912bfce1abb"
  end

  version "v1.4.22"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
