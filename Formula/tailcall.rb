class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.79.6/tailcall-x86_64-apple-darwin"
    sha256 "0b5cdfdca7a88a401b5b2959d7144d43fc8df17695cd4cdeb4d0da9893640bd9"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.79.6/tailcall-aarch64-apple-darwin"
    sha256 "30e5c656a3d1cd5f2c6260a3a169bcd8def2ab656b0ce2bb39b0d4363c1efe79"
  end

  version "v0.79.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
