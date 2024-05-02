class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.80.2/tailcall-x86_64-apple-darwin"
    sha256 "2639f6c1f7b713f408562f3944320a897d1985367491e712c4835ca47c482486"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.80.2/tailcall-aarch64-apple-darwin"
    sha256 "6946639cbec677f0ffbe6ade0887e6ae4ada8f9b42e75400e436b46362798896"
  end

  version "v0.80.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
