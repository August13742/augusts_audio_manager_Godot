# August’s Audio Manager (WIP) for Personal Godot Projects (Snapshot Sept. 2025)

Centralised audio management plugin for Godot 4. Handles sound effects and music with resource-driven configuration. Focus is on reliability and integration.

## Features

* **Resource-based config**
  Define audio with [`SFXResource`](resource_scripts/sfx_resource.gd), [`MusicResource`](resource_scripts/music_resource.gd), [`MusicPlaylistResource`](resource_scripts/music_playlist_resource.gd), [`SFXPlaylistResource`](resource_scripts/sfx_playlist_resource.gd).
* **Polyphonic SFX**
  Multiple one-shots simultaneously via `AudioStreamPolyphonic`.
* **Looping SFX**
  Named loop instances with independent stop/fade control.
* **Music crossfade**
  Smooth transitions between tracks, with optional fade override.
* **Playlists**
  Sequential and shuffle playback for both music and SFX.
* **Global audio control**
  Master/music/SFX bus volume, pause, and mute handling.

## Requirements

* Godot 4.5+
* Audio bus layout must exist before runtime:

  ```
  Master ─┬─ Music
          └─ SFX
  ```

## Setup

1. Copy plugin into:
   `res://addons/augusts_audio_manager/`
2. Enable the plugin in **Project Settings → Plugins**.
3. Buses `Master`, `Music`, and `SFX` must exist (asserts on missing buses).

This registers `AudioManager` as a global autoload singleton and adds custom resource types to the editor.

## Usage

```gdscript
# Play a one-shot SFX
var sfx: SFXResource = load("res://my_sfx_resource.tres")
AudioManager.play_sfx(sfx)

# Play looping music with crossfade
var music: MusicResource = load("res://my_music_resource.tres")
AudioManager.play_music(music)

# Play next track in playlist
var playlist: MusicPlaylistResource = load("res://my_playlist.tres")
AudioManager.play_music_playlist(playlist)

# Spatial one-shot (3D)
AudioManager.play_sfx_at_position3D_from_stream(load("res://explosion.ogg"), Vector3.ZERO)
```

## Components

* **[`AudioManager.gd`](AudioManager.gd)**
  Core singleton handling playback, looping, crossfades, and finish tracking.
* **[`plugin.gd`](plugin.gd)**
  Editor plugin: autoload registration + resource type definitions.
* **Resource scripts**

  * `sfx_resource.gd`
  * `sfx_playlist_resource.gd`
  * `music_resource.gd`
  * `music_playlist_resource.gd`

## License

MIT — see [`LICENSE`](LICENSE).
