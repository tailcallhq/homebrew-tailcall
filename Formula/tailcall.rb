class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.34.1/tailcall-x86_64-apple-darwin"
    sha256 "c6d03407be6ffc3f62ea43586022f3961aad6438f9d52ece9231adb188c24f51"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.34.1/tailcall-aarch64-apple-darwin"
    sha256 "7c764746fd7f784afbe48cf98b49fa01029a8f875034d3dd6490fe7142881f14"
  end

  version "v0.34.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
