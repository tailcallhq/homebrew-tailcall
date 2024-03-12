class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.49.4/tailcall-x86_64-apple-darwin"
    sha256 "0b79652bf6ff2ead40f6bce20b6d4ef4eeb3fc22be91282bd6d449515e87dd23"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.49.4/tailcall-aarch64-apple-darwin"
    sha256 "c8810a8b7903d84db5234bdd388bc64a467c21969a4bab5a942734f022534d71"
  end

  version "v0.49.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
