class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.15.1/tailcall-x86_64-apple-darwin"
    sha256 "f33400df40635c47ffa9519bf5828740fa3cd3ade35354e5362808d6db45b5c0"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.15.1/tailcall-aarch64-apple-darwin"
    sha256 "84283673d9218aa65e7118b91fdbc70fe1c51a0101f8c8dbb13b0540669f6bd0"
  end

  version "v0.15.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
