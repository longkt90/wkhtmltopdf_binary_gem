require 'minitest/autorun'

class WithDockerTest < Minitest::Test
  # Run code before a group of test (see: https://github.com/seattlerb/minitest#how-to-run-code-before-a-group-of-tests)
  SETUP = begin
    `docker-compose build`
  end

  def test_debian_9
    test with: 'debian_9'
  end

  def test_with_macos
    assert_equal `bin/wkhtmltopdf --version`.strip, 'wkhtmltopdf 0.12.5 (with patched qt)'
  end

  private

  def test(with:)
    assert_equal `docker-compose run --rm #{with}`.strip, 'wkhtmltopdf 0.12.5 (with patched qt)'
  end
end
