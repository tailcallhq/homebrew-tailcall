class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.47.4/tailcall-x86_64-apple-darwin"
    sha256 "35aa25840baa6e8c10c833fc4a90ed82c2b9027943839669fc69be58d3efa0c5"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.47.4/tailcall-aarch64-apple-darwin"
    sha256 "e11fe4cbeb6cdacdb01a620311aaf50c8102501e5138d51a8f750cb8a5f06bb3"
  end

  version "v0.47.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
