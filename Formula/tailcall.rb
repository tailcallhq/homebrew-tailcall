class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.53.0/tailcall-x86_64-apple-darwin"
    sha256 "fddd13caa0fed0d1b563a301a24a5571bad1c18698a346d20ce1143878cb9c76"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.53.0/tailcall-aarch64-apple-darwin"
    sha256 "019f2416c615fd8cb378a7db25487bb386f4c6e45f6ae71cf943495228e6082f"
  end

  version "v0.53.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
