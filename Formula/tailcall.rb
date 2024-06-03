class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.85.4/tailcall-x86_64-apple-darwin"
    sha256 "305897cd21bec72953934272c4663b24f067d25434cad54e1b8a891f43dc0ca7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.85.4/tailcall-aarch64-apple-darwin"
    sha256 "02b349d64208140ebd675b2e1b5501ac7f98bf55ba35913e9ed2cd527e3be3e9"
  end

  version "v0.85.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
