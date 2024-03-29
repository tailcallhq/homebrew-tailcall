class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.70.0/tailcall-x86_64-apple-darwin"
    sha256 "fad4ce31b3ae1084b88223ec6b1daa1a6985533651d2d7069490a1b7a50d83dd"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.70.0/tailcall-aarch64-apple-darwin"
    sha256 "e580049ccda4d2034cbf7bb7b383b22eda3d7c85afdedea6922f3e69b5488c93"
  end

  version "v0.70.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
