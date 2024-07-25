class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.98.6/tailcall-x86_64-apple-darwin"
    sha256 "71ca21937d15e11e13fabc288d2ff1319918042bc6477e65d1f49713bf86adb4"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.98.6/tailcall-aarch64-apple-darwin"
    sha256 "a2b07ebd5b95aa19ab18f563c2e1199aeeb9e1d251b17028f238788b599173ba"
  end

  version "v0.98.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
