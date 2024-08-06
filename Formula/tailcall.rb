class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.23/tailcall-x86_64-apple-darwin"
    sha256 "14ec2271a538e579b26d011adec15e62f2e3c772935b9396e74bcbe6a2c09a73"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.23/tailcall-aarch64-apple-darwin"
    sha256 "008249c7aa083abcb193a60306a3477e87e3840adcb85d1c3077532ddff621c1"
  end

  version "v0.99.23"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
