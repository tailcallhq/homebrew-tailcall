class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.86.0/tailcall-x86_64-apple-darwin"
    sha256 "556e26363fe56dd3b458d4919b6fb4d48d216a9b9cf74891e5c853af21b313df"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.86.0/tailcall-aarch64-apple-darwin"
    sha256 "bad5007bc6d48f0f8cc127393fd41ba2215992d2dd6a3e8f2c24498211d16a94"
  end

  version "v0.86.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
