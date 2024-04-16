class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.76.0/tailcall-x86_64-apple-darwin"
    sha256 "e3a4ea8def67f4d000765350766b47dc8cfd1f5781cfa774b67408a9d1981e65"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.76.0/tailcall-aarch64-apple-darwin"
    sha256 "582d522e31ef70cfee2a4d051fad520e9e5fb19e6f3d0e8861af064c3c75474a"
  end

  version "v0.76.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
