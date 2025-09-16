extends Resource
class_name SFXPlaylistResource


@export var tracks:Array[SFXResource]

var _last_track_index :int = -1

## Gets the next track to play
func get_next_track() -> SFXResource:
	if tracks.is_empty():
		return null

	_last_track_index = (_last_track_index + 1) % tracks.size()
	return tracks[_last_track_index]
