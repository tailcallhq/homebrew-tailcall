class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.32.1/tailcall-x86_64-apple-darwin"
    sha256 "16685fb806670a9908ff43bccf8870203bb13eca0cb186f1b074f4a8b3ae0719"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.32.1/tailcall-aarch64-apple-darwin"
    sha256 "93f5ff08a8cad1ccb897f461780d8c7869525393b34f2d6c9f56a8c869357904"
  end

  version "v0.32.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
