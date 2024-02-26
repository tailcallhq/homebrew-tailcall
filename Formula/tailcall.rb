class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.40.5/tailcall-x86_64-apple-darwin"
    sha256 "87993c63d90c8edf63e29421a3eb69ca19b03baa2519285dfff5645020f98e85"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.40.5/tailcall-aarch64-apple-darwin"
    sha256 "ca56d04e27ee9f03ef90ea23569dd2f20548ea8a05b63274e45832217406b3eb"
  end

  version "v0.40.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
