class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.21.3/tailcall-x86_64-apple-darwin"
    sha256 "3458a37655304d2b9a3af08540bfb5ef9a1d938a0edda875700f57f6bdd996d2"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.21.3/tailcall-aarch64-apple-darwin"
    sha256 "750028f3314415bf576d4dfbe6d94a3d3c5c99b0ae86d3d6d22168014ad02cb6"
  end

  version "v0.21.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
