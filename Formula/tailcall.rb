class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.92.4/tailcall-x86_64-apple-darwin"
    sha256 "4ed408b4bbe00dcd20b7ad9209d278fe568c6ec3cfd89c00288559b94d7261c2"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.92.4/tailcall-aarch64-apple-darwin"
    sha256 "af3b9f3d282a3ea959b13a1ee08249f7ed2117b547330cd56fdf1ca50710dd9c"
  end

  version "v0.92.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
