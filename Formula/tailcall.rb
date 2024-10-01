class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.117.1/tailcall-x86_64-apple-darwin"
    sha256 "c5133b525fd250e7e0934775dc8a40c2b33c3d252851bab1e464ac5354970ead"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.117.1/tailcall-aarch64-apple-darwin"
    sha256 "a8d76d0ff24ede8f3fd49c8e6d51d3ec82811b87c2f91ff3068e95029ecef168"
  end

  version "v0.117.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
