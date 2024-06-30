class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.93.5/tailcall-x86_64-apple-darwin"
    sha256 "bc29fbe34f350ccff01ec43b747b7d4e543102c1e09e2a5612e0fa1a2811c222"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.93.5/tailcall-aarch64-apple-darwin"
    sha256 "8fd129692e6e9b092744a28cb561c307e5b3a1c1f939e10331ca8f5a437f5981"
  end

  version "v0.93.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
