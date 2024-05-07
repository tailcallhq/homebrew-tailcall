class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.6/tailcall-x86_64-apple-darwin"
    sha256 "204582efc16cfd232b7d9dacb44ce43becfb0408d2b5ce1b209669fa2270c9d3"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.6/tailcall-aarch64-apple-darwin"
    sha256 "2059f9eee84126ba1421738bded982e76515e57d7f8d9a4d3f674cfc898582a6"
  end

  version "v0.82.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
