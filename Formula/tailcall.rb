class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.18/tailcall-x86_64-apple-darwin"
    sha256 "f347007fe3345c3ac758917417f0f4c5a1af3124876a79f190eeda9940b918af"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.18/tailcall-aarch64-apple-darwin"
    sha256 "70146f295eae493cd63270549e7a39c16dfdfd9fa86c589af0cce9950166a245"
  end

  version "v1.4.18"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
