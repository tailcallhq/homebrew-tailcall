class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.4/tailcall-x86_64-apple-darwin"
    sha256 "53ab16398a1a6da4a57fd0217915254c4b7ea331ac98ceb22834d6f52d219ade"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.4/tailcall-aarch64-apple-darwin"
    sha256 "f10f16bbd88ad94ea42344f516bba87ee1d3a90de2b08ad10c80a41aadbe9d09"
  end

  version "v1.4.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
