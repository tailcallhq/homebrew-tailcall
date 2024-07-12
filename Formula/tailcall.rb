class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.96.2/tailcall-x86_64-apple-darwin"
    sha256 "5d1d3e1e81c2cfa78e7b00ac861815aea6c268787160c0db1d398b6b20aff46d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.96.2/tailcall-aarch64-apple-darwin"
    sha256 "2181b632c824b9dfda7df0009f5bcb096b1dc3684c8676c8d5236f30c6383f11"
  end

  version "v0.96.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
