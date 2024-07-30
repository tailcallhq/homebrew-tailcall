class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.4/tailcall-x86_64-apple-darwin"
    sha256 "3b4e19fb7b11d8c15e96ae396dc177e2afcd375fabf74545296eb92ab242f750"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.4/tailcall-aarch64-apple-darwin"
    sha256 "773e30824221aadad16273e861309ad63a571a8452529757ea50f3f0d90c69d9"
  end

  version "v0.99.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
