class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.27.0/tailcall-x86_64-apple-darwin"
    sha256 "5523814e60a2f6cdf6d6cdcfb78f0b7965217cd5f9b1ed02c355357daadff631"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.27.0/tailcall-aarch64-apple-darwin"
    sha256 "e5ffea388e51e786f392f1a1edbd1295bc5b2f0e568071628a9956aee6e11ac4"
  end

  version "v0.27.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
