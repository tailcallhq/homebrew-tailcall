class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.14.13/tailcall-x86_64-apple-darwin"
    sha256 "872a02bde04341ea2b56d89150b463bda38a47c1635019bac4b3e50060bbdd75"
  elsif Hardware::CPU.arm?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.14.13/tailcall-aarch64-apple-darwin"
    sha256 "49d1ddcc079d32a4f25932e723d10026888269a0c559ee53a3743aad5e9ae0e7"
  end

  version "v0.14.13"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tc"
  end
end
