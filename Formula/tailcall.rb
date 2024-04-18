class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.76.3/tailcall-x86_64-apple-darwin"
    sha256 "801d3bc95f3429e848d02f6ed3cab95acec310ea179240052d9f7cefbda59cef"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.76.3/tailcall-aarch64-apple-darwin"
    sha256 "948f33fc0e50f07f9ccbdf0de224f3033d75d1649209563a43d3f21b1894b6ab"
  end

  version "v0.76.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
