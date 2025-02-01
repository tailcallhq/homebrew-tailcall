class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.23/tailcall-x86_64-apple-darwin"
    sha256 "7d8333eebb3939ddf3fe68095c87bef3c1e967e72aa4ca037694c74aef48c111"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.23/tailcall-aarch64-apple-darwin"
    sha256 "0ccf6df1190fec4014b8a0fabb39b47bb9787da6b7eb2058bcb6a6d2cc0cc434"
  end

  version "v1.4.23"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
