class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.1/tailcall-x86_64-apple-darwin"
    sha256 "ceaff647af0ada114980a529103cb029d6de8c5ff86deaf4067559a167b118a4"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.1/tailcall-aarch64-apple-darwin"
    sha256 "a114eca47666989351c024ee434d35518baa0166b8ac21561baf330e30d7fe7e"
  end

  version "v0.95.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
