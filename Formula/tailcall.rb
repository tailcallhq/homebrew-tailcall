class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.40.4/tailcall-x86_64-apple-darwin"
    sha256 "1cd7cc1a5c92b02ba0c9760fecead707aaa0239941def79f4d829aba1bbc9831"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.40.4/tailcall-aarch64-apple-darwin"
    sha256 "ae0e32cc8bb8ad73116e6c9bb92bc382165b1bae5bbcae7c6bb724abe0871c0b"
  end

  version "v0.40.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
