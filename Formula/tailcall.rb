class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.33.0/tailcall-x86_64-apple-darwin"
    sha256 "d23be9a466a00f9f384479f0960ddaab1659fd19248ed1c8834503526d5d2d7c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.33.0/tailcall-aarch64-apple-darwin"
    sha256 "2ffc3a9bc7583a749a773ad8d8d78fbe37e6769237d3b5cf6786f76b7f49b308"
  end

  version "v0.33.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
