class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.66.0/tailcall-x86_64-apple-darwin"
    sha256 "c7588e010d34091d71a2e990d41050912cb43bfdb9ba45dcefdeb86ae791a44e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.66.0/tailcall-aarch64-apple-darwin"
    sha256 "12a7622ce7469b04cccdeb93c0ce1a8ec9547eced2db44a1216612c251674419"
  end

  version "v0.66.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
