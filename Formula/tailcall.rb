class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.93.2/tailcall-x86_64-apple-darwin"
    sha256 "82ef9245b9655fcd42c24de8d9dd901287f2d03f0e5a857c2f1dd4a872fe3262"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.93.2/tailcall-aarch64-apple-darwin"
    sha256 "8ad312603607f08689ed71bfbefbd3031326eabfbd30f0ac7e9f0efda11a242e"
  end

  version "v0.93.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
