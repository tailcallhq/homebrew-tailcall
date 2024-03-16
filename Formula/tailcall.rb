class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.56.5/tailcall-x86_64-apple-darwin"
    sha256 "657b656b3e341358983a3d50b635f06f8e267799412a53074c4ec7cf58ffa9bc"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.56.5/tailcall-aarch64-apple-darwin"
    sha256 "f6070a472fb740afdae2027645fd64eaa27dc3239baeba4b6847c5df368b3a94"
  end

  version "v0.56.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
