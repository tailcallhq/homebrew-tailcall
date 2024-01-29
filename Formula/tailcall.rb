class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.25.1/tailcall-x86_64-apple-darwin"
    sha256 "20dc11a50281c718a4e7ed9cec9d10a5e735183e4bdf2284de88809fb30d3898"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.25.1/tailcall-aarch64-apple-darwin"
    sha256 "e74919cf0706c275dda55f94b7e881c6708332327121130d7251b522384954a8"
  end

  version "v0.25.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
