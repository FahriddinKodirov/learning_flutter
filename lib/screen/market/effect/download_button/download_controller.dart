import 'package:flutter/material.dart';
import 'package:learning_flutter/screen/market/effect/download_button/enum.dart';

abstract class DownloadController implements ChangeNotifier {
  DownloadStatus get downloadStatus;
  double get progress;

  void startDownload();
  void stopDownload();
  void openDownload();
}