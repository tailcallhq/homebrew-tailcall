class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.104.14/tailcall-x86_64-apple-darwin"
    sha256 "81a0b6a22eb4052bcddc20cf597ff777e5c86c7442aec41203e9e8c79a103790"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.104.14/tailcall-aarch64-apple-darwin"
    sha256 "3207ef8f868c6cf1e62d8a0bab69482e4e4b9b4bad2a1d77d049de72644db095"
  end

  version "v0.104.14"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
