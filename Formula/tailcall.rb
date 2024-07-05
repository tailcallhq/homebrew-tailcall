class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.5/tailcall-x86_64-apple-darwin"
    sha256 "11133bb5371479ba32a145db9b04012dcaba5bfa0617008cd998624f2514f72b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.5/tailcall-aarch64-apple-darwin"
    sha256 "dd2c93e93bf27c36c2e95c6aa8a28cfecd4605cd6cbee8e6b500c65757bc0376"
  end

  version "v0.95.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
