class Transcrypt < Formula
  include Language::Python::Virtualenv

  desc "Python 3.6 to JavaScript compiler"
  homepage "https://github.com/QQuick/Transcrypt"
  url "https://files.pythonhosted.org/packages/61/fa/3a6e70fb74e89976321457f7097884b90e9e8460dcc7a9e2e6208a9b59bf/Transcrypt-3.6.22.tar.gz"
  sha256 "2795c2e3f1b877170684927065a6540ebac9dd03de479102f2d4d6b42684cf4b"

  depends_on python3

  resource "mypy" do
    url "https://files.pythonhosted.org/packages/57/0f/fae85c5463af67bb6384af2747f2441090b1ff886cd29b68080f60e7a8ea/mypy-0.560.tar.gz"
    sha256 "bd0c9a2fcf0c4f7a54a2b625f466fcc000d415f371298d96fa5d2acc69074aca"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/e2/e1/600326635f97fee89bf8426fef14c5c29f4849c79f68fd79f433d8c1bd96/psutil-5.4.3.tar.gz"
    sha256 "e2467e9312c2fa191687b89ff4bc2ad8843be4af6fb4dc95a7cc5f7d7a327b18"
  end

  resource "typed-ast" do
    url "https://files.pythonhosted.org/packages/52/cf/2ebc7d282f026e21eed4987e42e10964a077c13cfc168b42f3573a7f178c/typed-ast-1.1.0.tar.gz"
    sha256 "57fe287f0cdd9ceaf69e7b71a2e94a24b5d268b35df251a88fef5cc241bf73aa"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
