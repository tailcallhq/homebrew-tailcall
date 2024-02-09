class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.37.2/tailcall-x86_64-apple-darwin"
    sha256 "c1a90014de215f0db744f6ecdb6eaf66c194c7599355d82eb9d1c778c80c11cb"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.37.2/tailcall-aarch64-apple-darwin"
    sha256 "ead404bd2e3a438ef878b94a71d236a7c77dead839662d3d08cc913a08d0e161"
  end

  version "v0.37.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
