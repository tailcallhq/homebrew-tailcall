class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.79.2/tailcall-x86_64-apple-darwin"
    sha256 "c416021bdab5616da9bcb69c5a610d1046e4d30b76913a228fa133dd82423d0a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.79.2/tailcall-aarch64-apple-darwin"
    sha256 "fb00a7f0b5cb5aba334269f82e9b26e77e4593d39b9de3bdc76cbe7c77fdfbb1"
  end

  version "v0.79.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
