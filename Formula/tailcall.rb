class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.96.11/tailcall-x86_64-apple-darwin"
    sha256 "6a2d196692ba6a2d72b89d5be19180f1847f939a0e1929d563f9941e8baa8e5d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.96.11/tailcall-aarch64-apple-darwin"
    sha256 "fb75c841c54f9becd57ce097bfdfc3a9fb950657503a1a08c031430ccaae4ef7"
  end

  version "v0.96.11"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
