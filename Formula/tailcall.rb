class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.102.2/tailcall-x86_64-apple-darwin"
    sha256 "1652154ec82438037d7c8d5c58c5edc562747201e3e12ad959fcd2c355776df1"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.102.2/tailcall-aarch64-apple-darwin"
    sha256 "0b3ae2b0836ffe2dea7e0c965c6a62b0304757cee4f8a4efa646826baaf3ba65"
  end

  version "v0.102.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
