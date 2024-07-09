class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.13/tailcall-x86_64-apple-darwin"
    sha256 "96f349ddf3a7f9b220ffeebefeca702d1ea47da742d9a034ac536785252b7879"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.13/tailcall-aarch64-apple-darwin"
    sha256 "bbc28ec0aa57a8ed946ecdff7c42536981f96c25bd6cd5837ec12962e45e294b"
  end

  version "v0.95.13"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
