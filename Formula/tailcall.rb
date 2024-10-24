class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.122.7/tailcall-x86_64-apple-darwin"
    sha256 "343f2257452e26a0d489609de023a4326abecbbe7c6631a9c0054a5dcb9e34ce"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.122.7/tailcall-aarch64-apple-darwin"
    sha256 "b4019df2db0257b57822307fbc60fd2b1c44da2eb62b4dfa83632f7aa1f640e2"
  end

  version "v0.122.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
