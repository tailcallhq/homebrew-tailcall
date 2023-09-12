class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.8.1/tailcall-x86_64-apple-darwin"
    sha256 "1950d6cb1f274a4366f9cded41317cfa82fe2482390bc993e2a81c21ae66198f"
  elsif Hardware::CPU.arm?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.8.1/tailcall-aarch64-apple-darwin"
    sha256 "2e2019238df46c7e6d2623b05f97446a4c3ccce265877707b6503f46acfbdf8e"
  end

  version "v0.8.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tc"
  end
end
