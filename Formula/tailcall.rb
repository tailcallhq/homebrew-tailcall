class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.74.11/tailcall-x86_64-apple-darwin"
    sha256 "df70f5f5ee1e5f49badf840938a41439ce2437aafecf75f5d991bca1523c4d55"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.74.11/tailcall-aarch64-apple-darwin"
    sha256 "6b442dc4d5ab82ef35da6d4248dd75a7239a161198a80a04b6c7985f39a16494"
  end

  version "v0.74.11"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
