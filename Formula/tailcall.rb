class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.2/tailcall-x86_64-apple-darwin"
    sha256 "e01a9de0e0c6cfadd35133fcae226dc4ece901a171508b7d29d1845fc9d96d05"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.2/tailcall-aarch64-apple-darwin"
    sha256 "94a9e598bd9f34ba1dc14ce962fe127174a621972238be4e04e58aecba2b910e"
  end

  version "v0.95.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
