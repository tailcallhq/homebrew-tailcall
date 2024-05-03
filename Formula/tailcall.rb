class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.81.1/tailcall-x86_64-apple-darwin"
    sha256 "e11c8764ab8a2f5f8196e297e64f8d5923bcd46e33c8ca240bc3cb307b39a28a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.81.1/tailcall-aarch64-apple-darwin"
    sha256 "f5ba5f385da8a2b25357b13251bf91dfdd325fba31f9fa230144418206d0ec77"
  end

  version "v0.81.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
