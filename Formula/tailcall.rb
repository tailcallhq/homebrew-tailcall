class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.3/tailcall-x86_64-apple-darwin"
    sha256 "4d4eb8d646edfde1d3a8824af941206d1244921897b560145447cdca8a0925dc"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.3/tailcall-aarch64-apple-darwin"
    sha256 "53d10fb5fbef39a4f94c41d443f030e79c951678e9f29dbe8776c1cc2e7db0b2"
  end

  version "v0.95.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
