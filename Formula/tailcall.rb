class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.123.1/tailcall-x86_64-apple-darwin"
    sha256 "367083445b1ad9cef0961df72450fc1b9a4f5038e9b660d2255b5a0729a708b7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.123.1/tailcall-aarch64-apple-darwin"
    sha256 "2d7ef7bf8f434989447635c5ecbd79e34583caf91475fd9a9122e2cb43dbe9e8"
  end

  version "v0.123.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
