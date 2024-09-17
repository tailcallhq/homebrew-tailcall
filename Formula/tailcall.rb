class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.15/tailcall-x86_64-apple-darwin"
    sha256 "206a9ff162a7d11c04898c9b9b5a79ad356a8991d5845dbc19c35123d45dfb71"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.15/tailcall-aarch64-apple-darwin"
    sha256 "353a2595c3936f0bb8d8dfb9d36fe03cf703fa9c2b9949558607ab19df5eb655"
  end

  version "v0.111.15"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
