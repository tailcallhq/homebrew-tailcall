class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.115.4/tailcall-x86_64-apple-darwin"
    sha256 "f8f50797392b4599801d6dd7dfc9fb21200182111890fa6fa1d297e97dcdb93d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.115.4/tailcall-aarch64-apple-darwin"
    sha256 "ea7edb5bd0d55e63323b5109d07d05bf0b5fa3e38fed59cc8754821ca779ea56"
  end

  version "v0.115.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
