class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.35.2/tailcall-x86_64-apple-darwin"
    sha256 "900e8ef10d58b7d5df02d4c91af0db21801f071928e03be5ae31b5a7085c7fcd"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.35.2/tailcall-aarch64-apple-darwin"
    sha256 "646a721f6faf25c71c8f015e3058a177793e88b82618d11331a408efbd2cfca0"
  end

  version "v0.35.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
