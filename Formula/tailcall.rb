class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.74.9/tailcall-x86_64-apple-darwin"
    sha256 "833a0f053cb98a1cea423c63887cc61dcb614a2efd38c38a28fe082fbd643254"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.74.9/tailcall-aarch64-apple-darwin"
    sha256 "f1e8ee8313cb4d69425b145ed2ef136ba311bfbbff1c78044f6f8ae4a9c05d14"
  end

  version "v0.74.9"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
