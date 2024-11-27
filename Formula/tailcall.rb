class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.130.0/tailcall-x86_64-apple-darwin"
    sha256 "6743f6d10e7f65dc33863308d67fd7d064d0e1cfd3d3f3a276ec66cdd9c88c7e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.130.0/tailcall-aarch64-apple-darwin"
    sha256 "c0191bcd464c5689f27dc884ef2b0af6b55f40057793e3df9f761e2b633ddfba"
  end

  version "v0.130.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
