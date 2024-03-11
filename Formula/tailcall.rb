class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.48.0/tailcall-x86_64-apple-darwin"
    sha256 "943287083596bc594f8eaf241803cd4965488aee38c993c03c5124bea5efcc8a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.48.0/tailcall-aarch64-apple-darwin"
    sha256 "4e29c5ac3460a45b70e70e14aa70ffcb011984348d7cc7834922aeb28273a72e"
  end

  version "v0.48.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
