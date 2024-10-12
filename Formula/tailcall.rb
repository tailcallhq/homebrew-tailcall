class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.121.2/tailcall-x86_64-apple-darwin"
    sha256 "c9a3b768ab36494158ab739dba3c15b8d1df0bb67a8e02846e39ff868820a66e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.121.2/tailcall-aarch64-apple-darwin"
    sha256 "5179a5c2d5ac3e1636760b524410cdfadf9215d92870f1ba35325bb770daddbb"
  end

  version "v0.121.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
