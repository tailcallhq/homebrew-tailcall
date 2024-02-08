class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.35.5/tailcall-x86_64-apple-darwin"
    sha256 "a32d781a7989f9cfd07942148c3e4f3638729f80e13be1c0249155dabcc3c1ef"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.35.5/tailcall-aarch64-apple-darwin"
    sha256 "00eec93ca5955b55af29839590f12e47d29033eba8757244b087c00796e3e4ae"
  end

  version "v0.35.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
