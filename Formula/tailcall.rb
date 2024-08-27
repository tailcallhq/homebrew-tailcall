class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.105.1/tailcall-x86_64-apple-darwin"
    sha256 "3c97c33e92317aecce7f9ec973753d2eef852c307b938c8eaee6ab46cffd9b74"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.105.1/tailcall-aarch64-apple-darwin"
    sha256 "2998529aded456bdaca5b53a31584c750198ba2ef14afd9f7e67c54ce380960c"
  end

  version "v0.105.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
