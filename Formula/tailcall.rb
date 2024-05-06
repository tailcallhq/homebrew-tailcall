class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.3/tailcall-x86_64-apple-darwin"
    sha256 "ec4da239e5afa13fa4640aa5603a356a57995e5469b82df6c00d2c4d43edb566"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.3/tailcall-aarch64-apple-darwin"
    sha256 "9437f9794dde70d4c3e4d149c52bcd24b179c365ab5978613221b3812f4b7952"
  end

  version "v0.82.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
