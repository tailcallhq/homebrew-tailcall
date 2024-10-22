class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.122.2/tailcall-x86_64-apple-darwin"
    sha256 "65cb0c6da9e85a8d1f26494812c93b3be899a71c410d18afedcf433ca177db2e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.122.2/tailcall-aarch64-apple-darwin"
    sha256 "b1440e56d7118f7694bb18c381720117a7e2d054c01082cc6bfbaec83cbe190c"
  end

  version "v0.122.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
