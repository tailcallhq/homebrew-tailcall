class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.121.17/tailcall-x86_64-apple-darwin"
    sha256 "31b4049fae625d318bb039849375033052bacbe02508249c2d9630f3a4b07818"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.121.17/tailcall-aarch64-apple-darwin"
    sha256 "f33ad49dcc68fad6b78678dbedc76a33ec33d1ebca73d5e6b643dd5122d02a7a"
  end

  version "v0.121.17"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
