class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.7/tailcall-x86_64-apple-darwin"
    sha256 "e5dc0b47c8316c47217dd46c844fcd85aa15f668e6c8164e4587f5deb762519f"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.7/tailcall-aarch64-apple-darwin"
    sha256 "768b718183035cc7a938c874adf5cc9dd6bea8ecf41711b9843047ec11af93eb"
  end

  version "v0.99.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
