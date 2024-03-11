class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.49.0/tailcall-x86_64-apple-darwin"
    sha256 "aa1d54f05270d446980512f9b67f6741292f3ee5f1db1267996c2509b5ee780a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.49.0/tailcall-aarch64-apple-darwin"
    sha256 "5eb0af6ccc1e0fb3564a0423d61a5a83a8d19a1b92b00e6c3aaf3301adebdad2"
  end

  version "v0.49.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
