class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.90.1/tailcall-x86_64-apple-darwin"
    sha256 "0fc819eeb0eb1f9ba33a98a7dee407f93b2a5f77cfb894d75a23afaac5403b48"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.90.1/tailcall-aarch64-apple-darwin"
    sha256 "c2c6ecf0cadc51a208fd68d54d671697d34edeb2a7484494202529c6f0f4d895"
  end

  version "v0.90.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
