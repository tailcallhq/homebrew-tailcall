class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.131.3/tailcall-x86_64-apple-darwin"
    sha256 "58926914c12513c35c21b6946b4f61ba0366c2043b45c465deeea7fe10320c0c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.131.3/tailcall-aarch64-apple-darwin"
    sha256 "cedb2aa563cbca17da33ecd0d9b3be52aaa0ee24bcba6c85aa6aacfba509ce1a"
  end

  version "v0.131.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
