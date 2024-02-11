class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.37.3/tailcall-x86_64-apple-darwin"
    sha256 "a5c177a38753f974ca481c73c210be6625e941dc549958087e0a56308bb62c07"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.37.3/tailcall-aarch64-apple-darwin"
    sha256 "cc1c20f3032e4637d82ee4cffeb532ccbe51cf107ee1ff496c3a863c20ddfa81"
  end

  version "v0.37.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
