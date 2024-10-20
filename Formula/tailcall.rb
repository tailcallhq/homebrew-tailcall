class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.121.16/tailcall-x86_64-apple-darwin"
    sha256 "be24f98d8cbad31b670549b021420efae4113e723a51059b5ee2af1b8325c00e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.121.16/tailcall-aarch64-apple-darwin"
    sha256 "f023ad5d2285d5343f725e6e38f6182efd58ff9436fc4b57f2245f8e3b5c956c"
  end

  version "v0.121.16"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
