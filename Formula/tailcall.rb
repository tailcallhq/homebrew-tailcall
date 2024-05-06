class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.4/tailcall-x86_64-apple-darwin"
    sha256 "6e59c8fdc27366c4d262b5ee42bb6e56af20bb4b6789d27053ff18c7511b27d3"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.4/tailcall-aarch64-apple-darwin"
    sha256 "ef2c15d6137026e180ac9d475abb219036f6f91a14b1d0a4719f47204306846a"
  end

  version "v0.82.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
