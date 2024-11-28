class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.131.1/tailcall-x86_64-apple-darwin"
    sha256 "49039fecdf0c293ba6caf589e8c55b629434f4410cd689a0a431d9323538c24b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.131.1/tailcall-aarch64-apple-darwin"
    sha256 "206c0364c7514958f1312c944c3803ef9ddb91e70c83ce32228ccdb4ae77f065"
  end

  version "v0.131.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
