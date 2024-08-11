class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.30/tailcall-x86_64-apple-darwin"
    sha256 "535fc622108c3cb7971f7361b91cc0535c0e844ace114c5878c85cdd54594590"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.30/tailcall-aarch64-apple-darwin"
    sha256 "c7ee9fb20f9cff5bafbdec7f2129831ed02b165e667228ae7f0bd3242e6e517a"
  end

  version "v0.99.30"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
