class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.92.9/tailcall-x86_64-apple-darwin"
    sha256 "37f2835540221a13059ccd40560bfd0fe64aa16f10c1bf8ca70727aa20af46af"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.92.9/tailcall-aarch64-apple-darwin"
    sha256 "484be206fbe6d0d6317b329861786fdbf9454ce1ad6437d5447f1ddba1b64315"
  end

  version "v0.92.9"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
