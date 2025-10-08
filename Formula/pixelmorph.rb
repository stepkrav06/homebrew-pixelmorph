# Formula for the pixelmorph tool
class Pixelmorph < Formula
  desc "Transform and animate image morphs using optimization algorithms"
  homepage "https://github.com/stepkrav06/pixelmorph9b8d46eb8a2e8fa924da646810c34901c144584f2cdb8b3351458dca7c367f74"
  url "https://github.com/stepkrav06/pixelmorph/archive/refs/tags/v0.1.tar.gz"
  sha256 "9b8d46eb8a2e8fa924da646810c34901c144584f2cdb8b3351458dca7c367f74"
  license "MIT"

  depends_on "python@3.11" # Or another recent Python version

  def install
    # A virtual environment to install Python dependencies
    venv = virtualenv_create(libexec, "python3.11")

    venv.pip_install_and_link buildpath/"requirements.txt"

    # Install the pixelmorph package itself into the virtual environment
    venv.pip_install_and_link buildpath

    # A wrapper script in the main Homebrew bin directory
    # that calls the executable from within the virtual environment.
    (bin/"pixelmorph").write_env_script libexec/"bin/pixelmorph", {}
  end

  test do
    # A simple test to check if the tool is installed and can run.
    # The --help command should always exit with 0 if it works.
    system "#{bin}/pixelmorph", "--help"
  end
end