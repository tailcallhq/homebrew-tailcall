class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.5.0/tailcall-x86_64-apple-darwin"
    sha256 "9cbb8c38c1a76347e3236b73f86482d75204ac08065766e01dfd96586a138770"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.5.0/tailcall-aarch64-apple-darwin"
    sha256 "f6f4cdaba92a0cf29a55b0fc318d1ab79e291b848ad4710b0f32352894db6db7"
  end

  version "v1.5.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
