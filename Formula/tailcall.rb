class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.29/tailcall-x86_64-apple-darwin"
    sha256 "1f72b91dad8488f586d24fcf55c507cf3e78984e3eb104e9a54ba36781f76352"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.29/tailcall-aarch64-apple-darwin"
    sha256 "f20e8f027ce698b798109105ca5d9d69940573d95e841ad01dd2cb308023d3a5"
  end

  version "v0.99.29"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
