class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.93.1/tailcall-x86_64-apple-darwin"
    sha256 "058e9fc9454bb0359890ed758e60873f88c10ab771b37ecd8c579bb2c6d4167b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.93.1/tailcall-aarch64-apple-darwin"
    sha256 "a2d94ef64f97212364f3b5597b74293e9b2dc292cd2d5a5d34f90e8afa896e33"
  end

  version "v0.93.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
