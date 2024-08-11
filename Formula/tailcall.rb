class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.100.2/tailcall-x86_64-apple-darwin"
    sha256 "62ca19138305cf881651a0791558f401d1c9d4ff682aaf11619085237709aa62"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.100.2/tailcall-aarch64-apple-darwin"
    sha256 "d2417377e612d7cd74157326ec049d60cdc8390149d6aeb789f2f084123e59bf"
  end

  version "v0.100.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
