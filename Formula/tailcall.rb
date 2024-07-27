class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.98.8/tailcall-x86_64-apple-darwin"
    sha256 "4cbbafb0ca76eb3f4e7729f91f17814045ac9e471a6b42169228e8893fda286f"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.98.8/tailcall-aarch64-apple-darwin"
    sha256 "3b73ea9e3a425a176b3527ed9962f459e9e96b4b15b3254e3bdf36f0fef3cc1b"
  end

  version "v0.98.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
