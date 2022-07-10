import 'package:module1/module1.dart';
export 'package:module1/module1.dart' show SampleObject;
import 'sample_2.dart';

extension SampleObject on BaseObject {
  static BaseObject sample2() => Sample2();
}
