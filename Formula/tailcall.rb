class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.0/tailcall-x86_64-apple-darwin"
    sha256 "e0094bd1c2b899ce852d97bc6c6b03c349827aac594a0e7243bebd9077f62d55"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.0/tailcall-aarch64-apple-darwin"
    sha256 "e1e7d65e4cf16ad6ac29220f2510995f654b0956c94d6c2debea50e4c2bf5df5"
  end

  version "v0.99.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
