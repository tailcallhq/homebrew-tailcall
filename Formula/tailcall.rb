class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.104.16/tailcall-x86_64-apple-darwin"
    sha256 "117d6212988b5a2b2ec641e1481f75ea05046ed7a6bf61ee9fb305378b96f17e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.104.16/tailcall-aarch64-apple-darwin"
    sha256 "268d162c82bc958bbeef9ff0e9b954fe08bdeba67818c1a41fda6ddc401ef690"
  end

  version "v0.104.16"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
