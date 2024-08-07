class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.24/tailcall-x86_64-apple-darwin"
    sha256 "85f69f55b8d58400c948ff874eae98d984be79ca62b5e30a08c9169f421851b4"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.24/tailcall-aarch64-apple-darwin"
    sha256 "b61eff6a60b4a4eca53cf0b46c32ff5d5e9da80b256efab8c193f2900186b4b7"
  end

  version "v0.99.24"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
