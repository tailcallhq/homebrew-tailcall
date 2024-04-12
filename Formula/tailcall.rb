class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.74.18/tailcall-x86_64-apple-darwin"
    sha256 "98539a7db89787d2e03b0433de1dc012a83b204e9424dd2cb570ee81c5d0553c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.74.18/tailcall-aarch64-apple-darwin"
    sha256 "21409ef36ad79a800c104d5f5b9f2be157a7212a1a06e4233b59fa669c497a17"
  end

  version "v0.74.18"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
