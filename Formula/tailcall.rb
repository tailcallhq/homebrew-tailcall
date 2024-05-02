class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.79.3/tailcall-x86_64-apple-darwin"
    sha256 "134216f79da81c6a69cc2a8ae26fc49c64ab6012daa9491d7a5cfab5dae3be38"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.79.3/tailcall-aarch64-apple-darwin"
    sha256 "cfd86059697cc4a4b74375b449acbebd4b1f2c85af44ebfdf7acd0781ea6dd43"
  end

  version "v0.79.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
