# See http://en.wikipedia.org/wiki/Cumulative_song
gem 'minitest', '~> 4.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/twelve_days'

class TwelveDaysTest < MiniTest::Unit::TestCase

  def song
    @song ||= ::TwelveDaysSong.new
  end

  def teardown
    @song = nil
  end

  def test_verse1
    expected = "On the first day of Christmas my true love gave to me, a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(1)
  end

  def test_verse2
    expected = "On the second day of Christmas my true love gave to me, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(2)
  end

  def test_verse3
    expected = "On the third day of Christmas my true love gave to me, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(3)
  end

  def test_verse4
    expected = "On the fourth day of Christmas my true love gave to me, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(4)
  end

  def test_verse5
    expected = "On the fifth day of Christmas my true love gave to me, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(5)
  end

  def test_verse6
    expected = "On the sixth day of Christmas my true love gave to me, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(6)
  end

  def test_verse7
    expected = "On the seventh day of Christmas my true love gave to me, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(7)
  end

  def test_verse8
    expected = "On the eighth day of Christmas my true love gave to me, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(8)
  end

  def test_verse9
    expected = "On the ninth day of Christmas my true love gave to me, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(9)
  end

  def test_verse10
    expected = "On the tenth day of Christmas my true love gave to me, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(10)
  end

  def test_verse11
    expected = "On the eleventh day of Christmas my true love gave to me, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(11)
  end

  def test_verse12
    expected = "On the twelfth day of Christmas my true love gave to me, twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(12)
  end

  def test_multiple_verses
    expected =
      "On the first day of Christmas my true love gave to me, a Partridge in a Pear Tree.\n\n" +
      "On the second day of Christmas my true love gave to me, two Turtle Doves, and a Partridge in a Pear Tree.\n\n" +
      "On the third day of Christmas my true love gave to me, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n"
    assert_equal expected, song.verses(1, 3)
  end

  def test_the_whole_song
    assert_equal song.verses(1, 12), song.sing
  end
end
