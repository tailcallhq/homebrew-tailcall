class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.114.2/tailcall-x86_64-apple-darwin"
    sha256 "bcf5b8c68a53b58d39689d7c7f99f5702ee09eb3503c718cf748e65efdf6ef9e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.114.2/tailcall-aarch64-apple-darwin"
    sha256 "35a174711e681f1dddf3128413c3d2d1f24841141a171060272b7376c4c7648c"
  end

  version "v0.114.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
