class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.117.0/tailcall-x86_64-apple-darwin"
    sha256 "f1e1d0842eef3e49389c4a1415d5af95e5806561fa4c29a271344f328cf779a9"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.117.0/tailcall-aarch64-apple-darwin"
    sha256 "632b2b42441a5f76ead76ca5b72fd936164262a6ce85704b530bb200062ffdc8"
  end

  version "v0.117.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
