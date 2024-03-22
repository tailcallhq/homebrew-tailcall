class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.66.3/tailcall-x86_64-apple-darwin"
    sha256 "32f8496575b88c63a2977c758902466bbf91a05a8655ade686c9bd137ff0469f"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.66.3/tailcall-aarch64-apple-darwin"
    sha256 "2f67998c25ccd4ed45782506b89c02f09e2d1fa460d24128e6dd6ad12ad3bb0f"
  end

  version "v0.66.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
