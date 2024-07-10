class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.16/tailcall-x86_64-apple-darwin"
    sha256 "e901c31938d79a66dd9fc267ab64169bb765077230d09eeb97f547b96fa3984a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.16/tailcall-aarch64-apple-darwin"
    sha256 "36edc8c7aaeda690471b6e3a3855c1a4d8d9ff4d99e9f226436dad571f658e37"
  end

  version "v0.95.16"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
