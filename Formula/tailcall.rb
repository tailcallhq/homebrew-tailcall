class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.46.0/tailcall-x86_64-apple-darwin"
    sha256 "c4c079036217972430b1f773fb52a542cf425ed9404b7b84567d276a43b802bc"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.46.0/tailcall-aarch64-apple-darwin"
    sha256 "5e11c31db21f70b2982d1440a672cc5036c9d3511fc0564b52412bfb95712a31"
  end

  version "v0.46.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
