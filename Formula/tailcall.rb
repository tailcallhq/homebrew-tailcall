class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.22.0/tailcall-x86_64-apple-darwin"
    sha256 "bb25148558d27e9eaea9c859d76aabd3f8dd49f445aad5e123ccc32e5595a93f"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.22.0/tailcall-aarch64-apple-darwin"
    sha256 "0b824cc45e9ad50b81953ff411c53ff8afd171f57fb983e94a1218f14c4e13da"
  end

  version "v0.22.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
