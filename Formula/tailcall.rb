class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.115.0/tailcall-x86_64-apple-darwin"
    sha256 "e0bc9b57a0948c4abdf4a9c650459015edd79634f6cf946bca619b123d335864"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.115.0/tailcall-aarch64-apple-darwin"
    sha256 "1c654a2febe892f7ee024f3f4f578c451afd6657252475debea416ce8834585b"
  end

  version "v0.115.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
