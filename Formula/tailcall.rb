class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.110.0/tailcall-x86_64-apple-darwin"
    sha256 "bc542cdb893d15e86021fdd2985094484f1d6daf896b2945cea83be263aa8ce5"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.110.0/tailcall-aarch64-apple-darwin"
    sha256 "bda55f551a9bdaf3df813389101965c7921235a23135fda7093db190977c5231"
  end

  version "v0.110.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
