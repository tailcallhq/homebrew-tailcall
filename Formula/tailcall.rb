class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.121.15/tailcall-x86_64-apple-darwin"
    sha256 "8fc805fe80a2df5038a1790c3e79a660bd9a9857de636a1140ce82d2d7db6ba1"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.121.15/tailcall-aarch64-apple-darwin"
    sha256 "2cb7ce2902788c2e51aecaf38b8815951440f16e08cb30733a889354069b4530"
  end

  version "v0.121.15"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
