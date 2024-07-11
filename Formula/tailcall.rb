class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.96.0/tailcall-x86_64-apple-darwin"
    sha256 "5447d2f7ea11c1ebca892e0c26a2e06b51542245b0cea1c319d8b2fd409d5ac3"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.96.0/tailcall-aarch64-apple-darwin"
    sha256 "6d6a29038305964846c80e39528348be2e8ae83b6f665bf819a9cbe913eb5d1e"
  end

  version "v0.96.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
