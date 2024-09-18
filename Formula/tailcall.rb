class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.21/tailcall-x86_64-apple-darwin"
    sha256 "8baf43906900eaa50aebb6f40cdb3aceed8df52163859edc2ed9c10c811761f1"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.21/tailcall-aarch64-apple-darwin"
    sha256 "0782f762a3ccb6ddc283e380a26d99326c00b591a5db053efe4c4da6f87d6327"
  end

  version "v0.111.21"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
