class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.62.3/tailcall-x86_64-apple-darwin"
    sha256 "bb1fb8a76513a5f116a813ff1a7a4984155bc632f7aed599b39eb076c2a1eace"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.62.3/tailcall-aarch64-apple-darwin"
    sha256 "3a549c9e9b9da34efeb5ddcaaa3a50dee20d91be2aa04d3e87a148daa5e18626"
  end

  version "v0.62.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
