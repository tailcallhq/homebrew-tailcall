class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.37.1/tailcall-x86_64-apple-darwin"
    sha256 "4c8e92842d0864f9ce49a2a6c99502ab02e26b57d8c33aa72773eb024bdd83fe"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.37.1/tailcall-aarch64-apple-darwin"
    sha256 "c26b7fec903929eec06a3732406ce85f67952a02b0abd4231fd73f8634de1ddc"
  end

  version "v0.37.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
