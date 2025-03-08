class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.5.3/tailcall-x86_64-apple-darwin"
    sha256 "988851156255976660a4b3d7b09667c968082ef4e24db1a9bc1d5dec6e9a1f62"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.5.3/tailcall-aarch64-apple-darwin"
    sha256 "5090b174f310247ddcc38aa2ca3db2f0ce9e7e17290edb403fabfa66ee5defdd"
  end

  version "v1.5.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
