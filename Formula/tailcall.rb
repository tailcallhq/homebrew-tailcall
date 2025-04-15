class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.5.19/tailcall-x86_64-apple-darwin"
    sha256 "12b63639cb2ed3346a4b522c4d9301e8a63d0e2b0f4360eb39580f879142342d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.5.19/tailcall-aarch64-apple-darwin"
    sha256 "7b6a976e5dcf72a56cf430bfcf5362add6c39030649690d1ecfc314260dde8f0"
  end

  version "v1.5.19"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
