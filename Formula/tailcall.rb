class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.28.0/tailcall-x86_64-apple-darwin"
    sha256 "f58cd431e538504e7a00ca329c9edcb8d778dc7cd4b026e1dd30cf0951e0930c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.28.0/tailcall-aarch64-apple-darwin"
    sha256 "325c4555ac35e789d57e6459d43430e48f6f903d3df5bda33768a4014aab0afc"
  end

  version "v0.28.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
