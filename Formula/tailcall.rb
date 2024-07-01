class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.94.0/tailcall-x86_64-apple-darwin"
    sha256 "35c6e3c99cadd37cac35c8db77351f31ec0d20d999956936cfd616bda914c08a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.94.0/tailcall-aarch64-apple-darwin"
    sha256 "54b6deb99712dc7b85c9289dea9741d786b20d325a6f8384b592c8d1a60cd48a"
  end

  version "v0.94.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
