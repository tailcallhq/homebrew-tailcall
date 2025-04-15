class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.5.18/tailcall-x86_64-apple-darwin"
    sha256 "d187d0b5c082730c07b9fc8b28ef38c28662edf560146a18f4d4e0f546b56348"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.5.18/tailcall-aarch64-apple-darwin"
    sha256 "c80b51524692781024d9af7501813a9c79ab38bfcfe1457c6d0ed79f5c857500"
  end

  version "v1.5.18"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
