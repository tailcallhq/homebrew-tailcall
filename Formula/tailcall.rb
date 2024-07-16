class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.96.8/tailcall-x86_64-apple-darwin"
    sha256 "40af08dda8b6e1a0f84aaabcdfeb8b4eb134b540c6a22115f8f516db2920616c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.96.8/tailcall-aarch64-apple-darwin"
    sha256 "898f5f75321652bf9eb6881b08c819c66c4901e68ffcdf355ef47b79e87e061c"
  end

  version "v0.96.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
