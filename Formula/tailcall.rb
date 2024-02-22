class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.40.0/tailcall-x86_64-apple-darwin"
    sha256 "a60ba8464c3efc5e8409a51edfce76a0df2abcd9ab71a52baeb73953bf4583f7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.40.0/tailcall-aarch64-apple-darwin"
    sha256 "91584b5af8a22568b18af9be28542552bca35ace63d13874123e0b4ce1cd4b3c"
  end

  version "v0.40.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
