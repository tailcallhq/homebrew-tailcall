class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.5/tailcall-x86_64-apple-darwin"
    sha256 "336c562b714c7387518a3ae8dda77e403d3af765cd3850f00ce6563b2311f417"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.5/tailcall-aarch64-apple-darwin"
    sha256 "f4499ae2041a264c3fe18ecbd35fa90235e9ad500ece2b2710ecbe907a5e3415"
  end

  version "v1.4.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
