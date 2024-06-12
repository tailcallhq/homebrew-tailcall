class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.89.0/tailcall-x86_64-apple-darwin"
    sha256 "094bc7b3419c9eae02cc2af845e079dccf9aec1523f9a8463083bf7ded26435a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.89.0/tailcall-aarch64-apple-darwin"
    sha256 "a778848e68a59d825dae16e051594417f8f1523cf2b6611fef79841497a32448"
  end

  version "v0.89.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
