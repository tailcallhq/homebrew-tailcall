class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.14/tailcall-x86_64-apple-darwin"
    sha256 "ff39219a343894f58522fb98438b5749aec9194dbf75bca1cdc2ef098483b47f"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.14/tailcall-aarch64-apple-darwin"
    sha256 "9f6d8d89a12993805f7770228c94d98bdf6a6b6fb1598ac07be425bf0252fb5e"
  end

  version "v0.82.14"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
