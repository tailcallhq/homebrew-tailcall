class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.76.9/tailcall-x86_64-apple-darwin"
    sha256 "9026041e2a006264c93c2decd917ece78c51aaf73fc052deccabe394b8f43c7e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.76.9/tailcall-aarch64-apple-darwin"
    sha256 "8f100fcab90dce4267dabb5b9e9766ec477a0b2ffecf93973e3c7f64500d3ffd"
  end

  version "v0.76.9"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
