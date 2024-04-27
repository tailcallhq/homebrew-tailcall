class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.78.6/tailcall-x86_64-apple-darwin"
    sha256 "0749208ca8561374c0c8b8c632fb8f52f6b5fcb59452bc1ee404fecd4a452606"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.78.6/tailcall-aarch64-apple-darwin"
    sha256 "2afc900026272e33c7db759fc67c93e3d7b170ebcfb83c7c440c8309748fa90c"
  end

  version "v0.78.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
