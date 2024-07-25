class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.98.4/tailcall-x86_64-apple-darwin"
    sha256 "05c97a37aadea51cc781422babab84747d4a56fc1530f1da9d5ef4034004ca0f"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.98.4/tailcall-aarch64-apple-darwin"
    sha256 "5d2ddaf0cd1c3f5689d36541810d8dd0d740e7268f4a97f6be812170237c94a9"
  end

  version "v0.98.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
