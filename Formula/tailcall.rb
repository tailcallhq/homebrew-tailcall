class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.14.8/tailcall-x86_64-apple-darwin"
    sha256 "d2e6d21910e0ef23a7903fc0268a78223945065532d921e0e5abb41428a35283"
  elsif Hardware::CPU.arm?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.14.8/tailcall-aarch64-apple-darwin"
    sha256 "95a0877e4df8586672a11e5adcf85fea9d013647850b2677b250f9c3756a93c3"
  end

  version "v0.14.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tc"
  end
end
