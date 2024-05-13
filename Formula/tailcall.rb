class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.16/tailcall-x86_64-apple-darwin"
    sha256 "887b16432c236d2b47d5ab3a0f9bc6caf4a8085d32ae2fc924d55ff093bf3de9"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.16/tailcall-aarch64-apple-darwin"
    sha256 "82afe1bdd27d8c4dadaed3fbe31719d697f822296e5bd135948a4c3c7535cb03"
  end

  version "v0.82.16"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
