class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.32.0/tailcall-x86_64-apple-darwin"
    sha256 "30f84360118addcd0f4c6bd56cf8d519ee1d430370255f4900e9b578aac40911"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.32.0/tailcall-aarch64-apple-darwin"
    sha256 "372ddb9eddfbaea0630cb43e1867ff6f22dee55f20f0c11410434bef05a77684"
  end

  version "v0.32.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
