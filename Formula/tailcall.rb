class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.135.1/tailcall-x86_64-apple-darwin"
    sha256 "c2c5dbdeda0a4ff1e2d593096341388c9f3512000994db86ab665affa92333a7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.135.1/tailcall-aarch64-apple-darwin"
    sha256 "4b33fc3e5a0fab1a5bcc18b7241bde5171ae581b7ff4ce4d71928cc979bda8a2"
  end

  version "v0.135.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
