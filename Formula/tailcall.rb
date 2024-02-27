class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.40.6/tailcall-x86_64-apple-darwin"
    sha256 "d5756388b9e038e129cfa8c26e73b7cbe611b40591f35d3871a64fb99645a1a5"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.40.6/tailcall-aarch64-apple-darwin"
    sha256 "1db26f83befd762e78bc335ae95a6aa370bd154f2f6aec71ec10327e7058a65f"
  end

  version "v0.40.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
