class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.107.0/tailcall-x86_64-apple-darwin"
    sha256 "fde624c4ef03180389d392b287fdc2f22644dca773d31d68e722ed729c3e7c10"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.107.0/tailcall-aarch64-apple-darwin"
    sha256 "c8faba830bdb6acba324b2b48a4c1caed135fc9fba116a6e4340934b6520a3aa"
  end

  version "v0.107.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
