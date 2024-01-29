class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.25.1/tailcall-x86_64-apple-darwin"
    sha256 "96333e3761950bdf60f40f27869e1db5180ec601c923821cbb1f76dcfb4f73be"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.25.1/tailcall-aarch64-apple-darwin"
    sha256 "be8ab495d934d8e87bc0e6c4be6510b0551d381d90d7a07a2e41b56febf0510a"
  end

  version "v0.25.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
