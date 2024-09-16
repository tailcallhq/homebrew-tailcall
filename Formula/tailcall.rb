class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.8/tailcall-x86_64-apple-darwin"
    sha256 "afea6438f05455b3ad6b07066c03e43cd6f72b4417dbc80cbb263bb4f8bc5ba5"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.8/tailcall-aarch64-apple-darwin"
    sha256 "ab9580046d1301a459974afadcf38f58440fae0507e549ec8ca33600a88fe9e6"
  end

  version "v0.111.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
