class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.77.1/tailcall-x86_64-apple-darwin"
    sha256 "0b81cb3ec4e59460943868037e4eb18a9596eb28d6ddcae3bd0f50bcb13a7f38"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.77.1/tailcall-aarch64-apple-darwin"
    sha256 "d15c5e4b69929dcc8e077a08a15de3cf68b74a2c5187f4ae6fe4a86d1e22ec27"
  end

  version "v0.77.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
