class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.8/tailcall-x86_64-apple-darwin"
    sha256 "126ff6193e6679f2b23dca44c2e2b62efd0d2f7e8a18698a9c92a3373f36d4e2"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.8/tailcall-aarch64-apple-darwin"
    sha256 "3932b47395afd8996810101043a31828e74ea1231c20159c68f77f4e127f98bc"
  end

  version "v0.99.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
