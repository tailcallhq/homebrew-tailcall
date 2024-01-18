class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.20.2/tailcall-x86_64-apple-darwin"
    sha256 "341edc18403f979667f9ee2390df49bf3e5b3faf3e8ff643ffc47159a8037d60"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.20.2/tailcall-aarch64-apple-darwin"
    sha256 "bed75796fdac1cb1a55748d8508db0a95e5fa30d9564b735a0425c434ffd881b"
  end

  version "v0.20.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
