class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.78.2/tailcall-x86_64-apple-darwin"
    sha256 "6caf7a1be2e84a51eb5d59af4812d3ec7ed5bc715af64ca042590f7811524537"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.78.2/tailcall-aarch64-apple-darwin"
    sha256 "f3a2413835787ca9a651aee0844f95e39424e67c12c8484a00cdf6660248b7bd"
  end

  version "v0.78.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
