class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.13.0/tailcall-x86_64-apple-darwin"
    sha256 "ed125b2701c53acf4b0d8b83c910b4699ee65d8be39420952b920802a08ea7d3"
  elsif Hardware::CPU.arm?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.13.0/tailcall-aarch64-apple-darwin"
    sha256 "ca033c1b517a2dfc5596f1006ec60ef8a1b33df8151be85dd513caf532caeb07"
  end

  version "v0.13.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tc"
  end
end
