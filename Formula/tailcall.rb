class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.54.0/tailcall-x86_64-apple-darwin"
    sha256 "8304aebaee744c500986c32e29e55a171b7a92e4af57281f31ffb2669d0fa214"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.54.0/tailcall-aarch64-apple-darwin"
    sha256 "2558e5787d71b2f4cbd2e525bf8517cdabd2bf2ce4d32b4b3757c09cc32b4863"
  end

  version "v0.54.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
