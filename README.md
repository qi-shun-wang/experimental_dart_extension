# Extensibility of Experimental Dart's extension
## Goal: 
Use dart's extension on an extension with a same name will have both functionalities.
# Result 
Failure.
# Eplanation:
#### In Case:
- [app](app/bin/app.dart) depends on [module1](module1/lib/module1.dart).
- use base object factory([SampleObject](module1/lib/src/samples/factory.dart)) from [module1](module1/lib/module1.dart) in [app](app/bin/app.dart).
- [app](app/bin/app.dart) has its base object factory([SampleObject](app/bin/samples/factory.dart)) with the same name.

The expected result should be runnable and achieved by this:


        import 'package:module1/module1.dart'; // an extension named SampleObject from module1
        import 'sample_2.dart';
        // an extension named SampleObject defined in app
        extension SampleObject on BaseObject {
            static BaseObject sample2() => Sample2();
        }

But in fact it doesn't work :

        import 'samples/export.dart';

        void main(List<String> arguments) { 
             // It's not runnable here with
             //『 The method 'sample1' isn't defined for the extension 'SampleObject'. 』.
             SampleObject.sample1(); 
             // It's fine here.
             SampleObject.sample2();
        }
