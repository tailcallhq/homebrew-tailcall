class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.44.1/tailcall-x86_64-apple-darwin"
    sha256 "dd10a5dd8391633e54a871bd8860ce68fcbd3287793c8bff18f587a0ad427e5c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.44.1/tailcall-aarch64-apple-darwin"
    sha256 "b66a0b5bb4a7aacf6b0608ceba3bcaf8bbc18982f411e5d4e4f0bac844b2b66d"
  end

  version "v0.44.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
