class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.92.8/tailcall-x86_64-apple-darwin"
    sha256 "bd773a25e43f8b3e0df454e8f266836841f8825b9766756ad7d9da9571ca6610"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.92.8/tailcall-aarch64-apple-darwin"
    sha256 "00381df0b662430c80d8a9621cb6170d9a32ea77507b6223e1c4eb7f05ce42f2"
  end

  version "v0.92.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
