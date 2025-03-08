class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.5.5/tailcall-x86_64-apple-darwin"
    sha256 "a213787c439fbc7986967bfcee2ae827a51c82f99059fe8a0233618378c29392"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.5.5/tailcall-aarch64-apple-darwin"
    sha256 "3e4ff14b490f226e20adbda7481a231646a71d6e57a562fd3469436e539d3770"
  end

  version "v1.5.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
