class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.113.3/tailcall-x86_64-apple-darwin"
    sha256 "be605a966978df61875758dda7bf529cf7e22fd5581fd3d91ec929f091034be9"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.113.3/tailcall-aarch64-apple-darwin"
    sha256 "0be4391fa9c3dcfdb6ac60a5ff0b03f65bbf420361afd1b420eb1f2e4cd907cd"
  end

  version "v0.113.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
