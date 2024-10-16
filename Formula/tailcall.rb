class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.121.7/tailcall-x86_64-apple-darwin"
    sha256 "66ac7df51e192fad86d7af5ea7e06eb9d6c2e3adc68071dae694b2377e1d56e4"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.121.7/tailcall-aarch64-apple-darwin"
    sha256 "a665e0b360936cc3addace0bd5ae5d3869c17939fd855a5d880200aeafb4d80c"
  end

  version "v0.121.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
