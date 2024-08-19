class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.104.12/tailcall-x86_64-apple-darwin"
    sha256 "09afa60ae36a3d47d89dacd38b5439b942061c7698b33982a4096d54dd1542cf"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.104.12/tailcall-aarch64-apple-darwin"
    sha256 "4c60969035838e67ef79cab590e0b905eedf6e18f247d474bd234d9a2c664710"
  end

  version "v0.104.12"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
