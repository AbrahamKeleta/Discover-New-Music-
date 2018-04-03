require 'test_helper'

class SongControllerTest < ActionDispatch::IntegrationTest
  test "should get song_artist:string" do
    get song_song_artist:string_url
    assert_response :success
  end

  test "should get song_name:string" do
    get song_song_name:string_url
    assert_response :success
  end

  test "should get song_link:string" do
    get song_song_link:string_url
    assert_response :success
  end

  test "should get song_artwork:link" do
    get song_song_artwork:link_url
    assert_response :success
  end

end
