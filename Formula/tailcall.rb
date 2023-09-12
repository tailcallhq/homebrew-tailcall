class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.8.0/tailcall-x86_64-apple-darwin"
    sha256 "7470f2ccb7f2a13e192fbbe1d7f6fe9baaa4105a77688b2171acd12e582afd67"
  elsif Hardware::CPU.arm?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.8.0/tailcall-aarch64-apple-darwin"
    sha256 "a6bf8769617bce37da1dd76fda5e435561556af0b00dfe5d87176109203b01d0"
  end

  version "v0.8.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tc"
  end
end
