class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.20/tailcall-x86_64-apple-darwin"
    sha256 "00ba7b621276f0fbb679dd916c3a38d6fe1548426cdb2364df9f73b0905efd74"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.20/tailcall-aarch64-apple-darwin"
    sha256 "8c92818678b364e7b991f7be3b536414b9ae1b822a5afb9e8e3f7995afff0ff4"
  end

  version "v0.99.20"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
