class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.92.0/tailcall-x86_64-apple-darwin"
    sha256 "bf9cd1df649746833809bed51efb2535b97801a5f1e7448117548ba7c222912f"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.92.0/tailcall-aarch64-apple-darwin"
    sha256 "3d4cd9317503bb9dde3311b64805995c348066e92f98fa190af1f04e2244646e"
  end

  version "v0.92.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
