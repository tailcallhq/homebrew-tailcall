class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.70.5/tailcall-x86_64-apple-darwin"
    sha256 "7af9846fc6ed008dff71e2453511ef5174021cdb4f0d9c52f82f9c773c67086c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.70.5/tailcall-aarch64-apple-darwin"
    sha256 "8f884afd5244b267af9b6606ea7f7d3e7f3ec9581a7ad42a05f5dd2d6c1ef29b"
  end

  version "v0.70.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
