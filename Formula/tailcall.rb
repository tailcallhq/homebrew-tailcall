class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.70.6/tailcall-x86_64-apple-darwin"
    sha256 "9ffbba245a6132a9fe14b21aa221fcdb88c6f3a12ab87a02c09943aedf2b2abd"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.70.6/tailcall-aarch64-apple-darwin"
    sha256 "be752376601d34031bf40a5f329853b8555e6787c0c6b382dbccf81ccdeed269"
  end

  version "v0.70.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
