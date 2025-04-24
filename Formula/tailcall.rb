class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.6.0/tailcall-x86_64-apple-darwin"
    sha256 "6721eeae5cfeeafec005b7b78b54f35658db0bb85e83f265bd6b63e9afc811f6"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.6.0/tailcall-aarch64-apple-darwin"
    sha256 "9c5d2ae1b63fc94f059a19a0ad0225ca682bda5164869504d2967e7e598c6629"
  end

  version "v1.6.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
