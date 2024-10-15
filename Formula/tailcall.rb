class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.121.6/tailcall-x86_64-apple-darwin"
    sha256 "c598452d347fc61db6e103a0a157dcc6a2e0b664f218f9781849def8189f2903"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.121.6/tailcall-aarch64-apple-darwin"
    sha256 "fa2eabb397d3dd2bb867258e262509b6d9ec6947a0d143dacf2fc0a4af11806b"
  end

  version "v0.121.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
