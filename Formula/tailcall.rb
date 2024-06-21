class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.91.2/tailcall-x86_64-apple-darwin"
    sha256 "34f85248dac5925b6a1078a89f9040509f7659322ba37f5f081ae6ef8c4953fc"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.91.2/tailcall-aarch64-apple-darwin"
    sha256 "e8bdbf525abf3b42de54588e73db0929d1d705871129b0f19b0bd38de6191890"
  end

  version "v0.91.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
