class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.9/tailcall-x86_64-apple-darwin"
    sha256 "0a9e4ac417ad7abf5e6e439715b0e7beca995cc98ccce8ee49d58228aa548319"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.9/tailcall-aarch64-apple-darwin"
    sha256 "53d99269cd8a355405692cf70e6f0fa694d859df60b2e1d6e99b97251385b808"
  end

  version "v0.95.9"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
