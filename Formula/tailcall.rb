class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.16/tailcall-x86_64-apple-darwin"
    sha256 "aaa9efbd41938c74284ba58bff11c4f453890e4e3c4e65fcc4db654f1a29c15e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.16/tailcall-aarch64-apple-darwin"
    sha256 "7c1e8389dcc9c04de624980280c3e3140f620281478d51cde3d462fda32d3a2e"
  end

  version "v0.111.16"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
