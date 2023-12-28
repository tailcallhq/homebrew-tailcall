class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.18.0/tailcall-x86_64-apple-darwin"
    sha256 "2f047180ed5fbc6f880f7ce7d9955f663b03c0e2843b140ad1c237b21b275c15"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.18.0/tailcall-aarch64-apple-darwin"
    sha256 "3cbc4b03e6bcbb3c7e6cc2970c4940595e8e9a6ec9d2cadc113a2f1cdb813009"
  end

  version "v0.18.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
