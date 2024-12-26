class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.1/tailcall-x86_64-apple-darwin"
    sha256 "d57a9df7aed6645d41243bbf39535ffd5999cfff328c1f7aea3495aa4d88e734"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.1/tailcall-aarch64-apple-darwin"
    sha256 "7f849404ba0ed0fe1fb51dcb9e99bb61fbeeb195c3ddd066075bf4e6c7c92791"
  end

  version "v1.4.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
