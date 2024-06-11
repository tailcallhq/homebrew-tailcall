class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.88.2/tailcall-x86_64-apple-darwin"
    sha256 "fdfa7ef57dfcef09a479d0d06d7d55de8fcf7eb885107301a7b225ad980d6967"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.88.2/tailcall-aarch64-apple-darwin"
    sha256 "2c999849aac7765f38c46095e97cabdeac699270d7150f25068cb2822a085cd2"
  end

  version "v0.88.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
