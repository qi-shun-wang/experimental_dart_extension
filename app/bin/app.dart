import 'samples/export.dart';

void main(List<String> arguments) {
  // Sample 1 is from module 1. It doesn't have enhanced by the same extension name.
  // It's not runnable here. And have this problem 『 The method 'sample1' isn't defined for the extension 'SampleObject'. 』
  SampleObject.sample1();
  // Sample 2 is from app itself without any problem literally.
  SampleObject.sample2();
}
