class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.121.13/tailcall-x86_64-apple-darwin"
    sha256 "1bd1dd2a45db5dc99e3e347e51b66283c7e35b9425c30cbafe9fcb16134d8df1"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.121.13/tailcall-aarch64-apple-darwin"
    sha256 "dcc9a690cfc7fae18d0e17984de210061fc66a53843550f57979667ad86f630f"
  end

  version "v0.121.13"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
