class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.71.2/tailcall-x86_64-apple-darwin"
    sha256 "7dd539a345ff4112fa3b310f9415bf483783a64ea442e3b05cc49a6f76f7d6b7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.71.2/tailcall-aarch64-apple-darwin"
    sha256 "f01c5a3fb44fd069dd4f5901de5dd79f13c58b1c9714d9c319d3d46305680ec4"
  end

  version "v0.71.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
