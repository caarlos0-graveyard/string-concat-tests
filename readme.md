# string-concat-tests

- `Test.java` and `Test2.java`: two implementations of the same code;
- `Test.class` and `Test2.class`: previous explained examples compiled with
`javac` withou any params;
- `Test.bytecode` and `Test2.bytecode`: bytecode of the previous example,
decompiled with `javap -c`;
- `bytecode.diff`: diffs between the bytecode files;
- `times.txt`: times of the execution of the two programs (with `time java Test`
and `time java Test2`).

> **HEADS UP**: You can test it in your machine by running the `build.sh` script.

These tests have no scientific proofs, and you should not just take them as
the global final truth. Envinronment, JVM Version/Implementation, and other
things may change the final result. Do your own tests.

### Versions used:

```
$ java -version
java version "1.7.0_25"
Java(TM) SE Runtime Environment (build 1.7.0_25-b15)
Java HotSpot(TM) 64-Bit Server VM (build 23.25-b01, mixed mode)

$ javac -version
javac 1.7.0_25

$ javap -version
1.7.0_25

$ uname -a
Linux carlosbecker 3.8.0-26-generic #38-Ubuntu SMP Mon Jun 17 21:43:33 UTC 2013
x86_64 x86_64 x86_64 GNU/Linux
```
