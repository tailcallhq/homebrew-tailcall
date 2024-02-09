class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.37.0/tailcall-x86_64-apple-darwin"
    sha256 "ffea3ccad5f7c7850fab1a11b97faece77840bb4206ab090afd210c5c58a7529"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.37.0/tailcall-aarch64-apple-darwin"
    sha256 "275cebdef271192024342bf8f1e3457d2949c1fb97d192a8abd290d3d1420ace"
  end

  version "v0.37.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
