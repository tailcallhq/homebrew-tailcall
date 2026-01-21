class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.6.13/tailcall-x86_64-apple-darwin"
    sha256 "79aa91b3343e3f4d369c8dab52ef1e0951ed25f85232689a506b95ebbbc8ea1a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.6.13/tailcall-aarch64-apple-darwin"
    sha256 "177c863d00dccb1bc25761e557ed2974e998db90a9bcbd60bbe1c0b754c37f11"
  end

  version "v1.6.13"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
