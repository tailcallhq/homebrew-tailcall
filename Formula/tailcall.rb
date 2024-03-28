class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.68.8/tailcall-x86_64-apple-darwin"
    sha256 "f4a56aeeacc621453d7a2ffc25de367ebb761b490aaafd9faf3d224c8d32c5dd"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.68.8/tailcall-aarch64-apple-darwin"
    sha256 "7e949616d14e701640863be513878f05da007156678217451cf0d2c47ff9eefe"
  end

  version "v0.68.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
