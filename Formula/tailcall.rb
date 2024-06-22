class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.92.5/tailcall-x86_64-apple-darwin"
    sha256 "ab2e40ec0845e4895ec6a90139193580e988a48d7b8838e84a03f170f6d69275"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.92.5/tailcall-aarch64-apple-darwin"
    sha256 "4f6b302c51a8eccc2fe48f203c32069f7d10cca03cade754862044f716f68efd"
  end

  version "v0.92.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
