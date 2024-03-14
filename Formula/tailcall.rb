class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.52.0/tailcall-x86_64-apple-darwin"
    sha256 "744319accec1353965767843b3c768fc3ee6473212ad9acdd324329eb97fdee7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.52.0/tailcall-aarch64-apple-darwin"
    sha256 "9a31410ee7dc1487c004930a3257cf312c895a276d3f4773208cfcf7852be679"
  end

  version "v0.52.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
