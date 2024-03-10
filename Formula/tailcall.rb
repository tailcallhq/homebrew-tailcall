class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.47.1/tailcall-x86_64-apple-darwin"
    sha256 "447d355c5753264c843ca77d6b676e88664cc9bf1c2e0a844472d211c9823633"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.47.1/tailcall-aarch64-apple-darwin"
    sha256 "458719459391b7d5d46f4235e19d6d4c82e437deec39bb9acab494bcee60ab8e"
  end

  version "v0.47.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
