class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.120.2/tailcall-x86_64-apple-darwin"
    sha256 "2bf6a6895842f0db6f5a53ca239ee60c85fac16a8d1010037f99aa96c080592d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.120.2/tailcall-aarch64-apple-darwin"
    sha256 "9eaba47386e0fc308b0740fc48be5d657fcae7f26fdc641ce91747913e9227ee"
  end

  version "v0.120.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
