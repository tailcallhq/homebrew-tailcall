class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.45.0/tailcall-x86_64-apple-darwin"
    sha256 "41918c27959cbdad5b6e29654b44ae262a86a2e72f77348eb43fcc36bbad5cb6"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.45.0/tailcall-aarch64-apple-darwin"
    sha256 "636a774bd19f6d7c071861759966afbec658acf9973475f541bc1871624ae836"
  end

  version "v0.45.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
