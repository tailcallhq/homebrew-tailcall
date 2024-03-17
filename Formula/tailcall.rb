class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.60.0/tailcall-x86_64-apple-darwin"
    sha256 "952f4ab97684215ecf23386586a2826036104297592a81060c41f2a253ec77b2"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.60.0/tailcall-aarch64-apple-darwin"
    sha256 "886e9a2c1fd03733892d64fccef26b70fc18cd6242258af1a61c6077f8854811"
  end

  version "v0.60.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
