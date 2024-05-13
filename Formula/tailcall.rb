class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.15/tailcall-x86_64-apple-darwin"
    sha256 "d163223b13fa0ecf46342b14ca8d7e56279482e2cf02c5f9fd84000fcd51b8c5"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.15/tailcall-aarch64-apple-darwin"
    sha256 "4d3b3dacbe3c929e389783cda475295cd419cc6ccd8ede69a1a3dd2753d97ed4"
  end

  version "v0.82.15"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
