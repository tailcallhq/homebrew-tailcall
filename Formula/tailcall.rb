class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.84.1/tailcall-x86_64-apple-darwin"
    sha256 "70a279c2062dd61722ea494ba53f2d5b5fcb671803d6e34bc1327303dd1a9580"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.84.1/tailcall-aarch64-apple-darwin"
    sha256 "1fa28fd32f3ba9d4c813eb393702ae244fb1410e343994787a1e1a708636b1a5"
  end

  version "v0.84.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
