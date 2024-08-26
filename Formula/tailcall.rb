class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.104.18/tailcall-x86_64-apple-darwin"
    sha256 "e9966d11159dd8aa32e53d5a8925e6f4cc2c54cabb205ab8858589f74cbc7f1b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.104.18/tailcall-aarch64-apple-darwin"
    sha256 "bb9de95dc48f5a4ac9030105e97a830ce351eefdb04b5925240bb8f30c2c91fc"
  end

  version "v0.104.18"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
