class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.120.0/tailcall-x86_64-apple-darwin"
    sha256 "284778a4b10db47c67578e34cc9e08043edb04ae68dc2cc9d250ca8a1d40d582"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.120.0/tailcall-aarch64-apple-darwin"
    sha256 "cbd532c1cb64398e6735e02fcf83c1ae94b8717145c4898f7d08954710cee5fc"
  end

  version "v0.120.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
