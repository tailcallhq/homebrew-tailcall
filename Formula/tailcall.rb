class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.21/tailcall-x86_64-apple-darwin"
    sha256 "35b3dfa6f6d8ba8fad4da30d7a2226a3df71e8dc4906da61d74d29a6f6fdeaba"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.21/tailcall-aarch64-apple-darwin"
    sha256 "d02e9d999d5745a23d7a34876c0e4fa49fcd3efeae149b1a03d6619a0d7b7cfa"
  end

  version "v1.4.21"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
