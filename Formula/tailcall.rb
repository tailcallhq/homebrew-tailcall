class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.47.5/tailcall-x86_64-apple-darwin"
    sha256 "5baa0ddda3dfdf886c5af2030bf6f92ae289207ad641fc7e8dea786c5a6d41e4"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.47.5/tailcall-aarch64-apple-darwin"
    sha256 "32434e69c88659ad6724b6719e874fee6bbe551bba11a9ba93141206779a6c39"
  end

  version "v0.47.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
