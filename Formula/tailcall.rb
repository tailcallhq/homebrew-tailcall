class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.25.3/tailcall-x86_64-apple-darwin"
    sha256 "caf73e8ed7d793c3ee05eb9a59dcc55b2c4ad064036d6da352b3ecf186b41a9d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.25.3/tailcall-aarch64-apple-darwin"
    sha256 "9c0ab546769ff4fc42408168a5481bfa98b1c1728665545728783a3a47d0e710"
  end

  version "v0.25.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
