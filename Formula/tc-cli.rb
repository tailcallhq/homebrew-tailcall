class Tailcall CLI < Formula
    desc "Tailcall CLI App"
    homepage "https://github.com/tailcallhq/tailcall/"
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.1.0/tailcall-v0.1.0.zip"
    sha256 ""
    version "0.1.0"
  
    depends_on "openjdk@11"
  
    def install
      bin.install "tailcall_cli_main"
    end
  
    test do
      system "#{bin}/tailcall_cli_main"
    end
  end
  