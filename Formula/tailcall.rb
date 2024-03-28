class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.69.2/tailcall-x86_64-apple-darwin"
    sha256 "b134f2f8b04387adc84552549aba83ebd957d0f0d5a7c3f8e8397e3f19d6acd1"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.69.2/tailcall-aarch64-apple-darwin"
    sha256 "276597de9d8705605ce4ec3df4149eda76703bdbb1b9f464dccfcbfecc97df6b"
  end

  version "v0.69.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
