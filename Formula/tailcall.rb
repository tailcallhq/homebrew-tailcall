class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.68.5/tailcall-x86_64-apple-darwin"
    sha256 "bbc2773c20150b44ca104602bdcfdc7e420b4218f6bdc57a28cfa938f1508e1e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.68.5/tailcall-aarch64-apple-darwin"
    sha256 "92d16097151bf47b1ed2f7229cafebcf569038acd296416a0254488b9b0f80ff"
  end

  version "v0.68.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
