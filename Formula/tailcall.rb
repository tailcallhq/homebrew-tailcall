class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.70.4/tailcall-x86_64-apple-darwin"
    sha256 "0d19c1771e9b3b2e36583bf60c23bfb3f08ffabe5eb75e0240cd083b9f269cc4"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.70.4/tailcall-aarch64-apple-darwin"
    sha256 "cd53e880a313e18d787cb9d3115134f363a3ee747121af3ae5fb7c5d3ae3936c"
  end

  version "v0.70.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
