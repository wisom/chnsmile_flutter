/*
 * Copyright 2018, 2019, 2020, 2021 Dooboolab.
 *
 * This file is part of Flutter-Sound.
 *
 * Flutter-Sound is free software: you can redistribute it and/or modify
 * it under the terms of the Mozilla Public License version 2 (MPL2.0),
 * as published by the Mozilla organization.
 *
 * Flutter-Sound is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * MPL General Public License for more details.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:chnsmile_flutter/flutter_sound/flutter_sound.dart';

//import 'util/log.dart';
import 'demo_active_codec.dart';
import 'demo_common.dart';
import 'demo_media_path.dart';

///
class RecordingPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SoundPlayerUI.fromLoader(
      createTrack as Future<Track> Function(BuildContext),
      showTitle: true,
    );
  }

  ///
  Future<Track> createTrack(BuildContext context) async {
    Track track;

    String title;
    if (_recordingExist(context)) {
      /// build player from file
      if (MediaPath().isFile) {
        // Do we want to play from buffer or from file ?
        track = await _createPathTrack();
        title = 'Recording from file playback';
      }

      /// build player from buffer.
      else if (MediaPath().isBuffer) {
        // Do we want to play from buffer or from file ?
        track = await _createBufferTrack();
        title = 'Recording from buffer playback';
      }

      if (track != null) {
        track.trackTitle = title;
        track.trackAuthor = 'By flutter_sound';

        if (kIsWeb) {
          track.albumArtAsset = null;
        } else if (Platform.isIOS) {
          track.albumArtAsset = 'AppIcon';
        } else if (Platform.isAndroid) {
          track.albumArtAsset = 'AppIcon.png';
        }
      }
    } else {
      var error = SnackBar(
          backgroundColor: Colors.red,
          content: Text('You must make a recording first with the '
              'selected codec first.'));
      ScaffoldMessenger.of(context).showSnackBar(error);
    }
    return track;
  }

  Future<Track> _createBufferTrack() async {
    Track track;
    // Do we want to play from buffer or from file ?
    if (fileExists(MediaPath().pathForCodec(ActiveCodec().codec))) {
      var dataBuffer =
          await makeBuffer(MediaPath().pathForCodec(ActiveCodec().codec));
      if (dataBuffer == null) {
        throw Exception('Unable to create the buffer');
      }
      track = Track(dataBuffer: dataBuffer, codec: ActiveCodec().codec);
    }
    return track;
  }

  Future<Track> _createPathTrack() async {
    Track track;
    var audioFilePath = MediaPath().pathForCodec(ActiveCodec().codec);
    track = Track(trackPath: audioFilePath, codec: ActiveCodec().codec);
    return track;
  }

  bool _recordingExist(BuildContext context) {
    // Do we want to play from buffer or from file ?
    var path = MediaPath().pathForCodec(ActiveCodec().codec);
    return (path != null && fileExists(path));
  }
}
