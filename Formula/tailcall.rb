class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.76.7/tailcall-x86_64-apple-darwin"
    sha256 "4dd0a913fa56c5feb04905994650c8fbfcadca76b17ba7d0fde2766161b7a5d2"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.76.7/tailcall-aarch64-apple-darwin"
    sha256 "5084940b178c01e491484962e989b76f77c45151b82252c8b57ad632a7169276"
  end

  version "v0.76.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
