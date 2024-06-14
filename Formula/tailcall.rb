class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.90.2/tailcall-x86_64-apple-darwin"
    sha256 "a250371499a349756d0cda87fec8d80fc430a7fb1cbfc8fca2f9f4774b5b7bdc"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.90.2/tailcall-aarch64-apple-darwin"
    sha256 "cd456f4bf4b68e3fc32eaf7534605b68cbe1ebfcce19b6ca778731d21b443589"
  end

  version "v0.90.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
