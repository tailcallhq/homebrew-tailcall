class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.97.0/tailcall-x86_64-apple-darwin"
    sha256 "0f23b661610074eeebe2f0ae45e2b28f917ac266b89d74d436332af83fbdc296"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.97.0/tailcall-aarch64-apple-darwin"
    sha256 "22a0d51fcbdfece4284a7c47cb903f0ebdba9a267e90341562f7c7111ba466ec"
  end

  version "v0.97.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
