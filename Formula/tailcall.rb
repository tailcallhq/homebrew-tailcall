class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.97.4/tailcall-x86_64-apple-darwin"
    sha256 "e64992c4f1fc216f0013dfba592c1413948bac9d4fbb260a01580a6443eccc5d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.97.4/tailcall-aarch64-apple-darwin"
    sha256 "d0e061ec46e875af8370d26c467f7b575d1a9aa2c26e3c00eec8e998215390f4"
  end

  version "v0.97.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
