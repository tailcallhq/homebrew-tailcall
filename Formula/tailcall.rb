class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.5.8/tailcall-x86_64-apple-darwin"
    sha256 "2d06e33f1c74d6c806bfec1351f8df0c74ebb2cd4c8aace55132ca2efe7dab40"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.5.8/tailcall-aarch64-apple-darwin"
    sha256 "60a44149cfabd60b2c70ff415d562f7d399467adf28ac9884d03502c94a3e866"
  end

  version "v1.5.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
