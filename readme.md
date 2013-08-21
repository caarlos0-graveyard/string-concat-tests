# string-concat-tests

- `TestX.java`: implementations of the same code;
- `TestX.class`: examples compiled with `javac` with no extra params;
- `TestX.bytecode`: the bytecodes of the previous example, decompiled with `javap -c`;
- `times.txt`: times of the execution of the the programs (with `time java TestX`).

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
Linux carlosbecker-carlosbecker 3.9.5-301.fc19.x86_64 #1 SMP Tue Jun 11 19:39:38 UTC 2013 x86_64 x86_64 x86_64 GNU/Linux
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
