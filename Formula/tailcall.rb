class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.135.4/tailcall-x86_64-apple-darwin"
    sha256 "b429e25e7813a9e2b90dcec11d9cb5287751246128dd6c76a7349774829c5554"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.135.4/tailcall-aarch64-apple-darwin"
    sha256 "b429e25e7813a9e2b90dcec11d9cb5287751246128dd6c76a7349774829c5554"
  end

  version "v0.135.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
