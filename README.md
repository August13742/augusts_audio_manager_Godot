# August's Audio Manager (WIP) for Personal Godot Projects

A comprehensive audio management plugin for Godot 4 that provides centralized control over sound effects and music with resource-based configuration.

## Features

- **Resource-Based Audio**: Define audio with [`SFXResource`](resource_scripts/sfx_resource.gd), [`MusicResource`](resource_scripts/music_resource.gd), and [`MusicPlaylistResource`](resource_scripts/music_playlist_resource.gd)
- **Polyphonic SFX**: Multiple sound effects can play simultaneously
- **Looping SFX Management**: Named looping sounds with individual control
- **Music Crossfading**: Smooth transitions between tracks
- **Playlist Support**: Sequential and shuffle playback modes
- **Global Audio Controls**: Master volume, pause, and bus management

## Quick Setup

1. Copy the plugin to `res://addons/`
2. Enable the plugin in Project Settings
3. Ensure audio buses exist: `Master` → `Music` and `SFX`

## Basic Usage

```gdscript
# Play a sound effect
var sfx = preload("res://my_sfx_resource.tres")
AudioManager.play_sfx(sfx)

# Play music with crossfade
var music = preload("res://my_music_resource.tres")
AudioManager.play_music(music)

# Play from playlist
var playlist = preload("res://my_playlist_resource.tres")
AudioManager.play_playlist(playlist)
```

## Core Components

- [`AudioManager`](AudioManager.gd): Main singleton handling all audio operations
- [`plugin.gd`](plugin.gd): Editor plugin registration and custom resource types

## License

MIT License - see [`LICENSE`](LICENSE)