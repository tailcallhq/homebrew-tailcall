class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.51.0/tailcall-x86_64-apple-darwin"
    sha256 "dfe5c094ac0b95ba0a583c6dbb94bd8a8eb0c682b2fd8d2d77ccaddd6538ce27"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.51.0/tailcall-aarch64-apple-darwin"
    sha256 "91fa915d2b7d617b0666ae7e39bb331c6947e2de688a182faf5cf86d4a0fa1bf"
  end

  version "v0.51.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
