class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.79.1/tailcall-x86_64-apple-darwin"
    sha256 "4dc6780832136d1a939d00f80029dd0d9e0b6134fce88144e88bd92284698c43"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.79.1/tailcall-aarch64-apple-darwin"
    sha256 "f1508bdaaff8524d9d64a819238c7624427fa74840f752a7cdb5567cfd67cf00"
  end

  version "v0.79.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
