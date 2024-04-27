class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.78.5/tailcall-x86_64-apple-darwin"
    sha256 "64eebbf5ad6dded0d1f69876da24e72db9d3d894ff24e1f0f286906a78c30811"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.78.5/tailcall-aarch64-apple-darwin"
    sha256 "248fad17efd66901908b399ae9b0a28dfeb0fbe55e9c1eb99a6eef5cbf6d646e"
  end

  version "v0.78.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
