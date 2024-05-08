class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.10/tailcall-x86_64-apple-darwin"
    sha256 "1712f945689e71cdd025cfe774d236182e37e959e6f42264fa3ab901af595b2d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.10/tailcall-aarch64-apple-darwin"
    sha256 "01d1a4c16fd3b1ea84cffa71823104d55e8e1d72d39247325949a37ab4ae49f7"
  end

  version "v0.82.10"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
