

rm -rf *.class
rm -rf *.out
rm -rf *.dylib


javac AlgoViz.java

# run "javah AlgoViz"

# locate jni.h

gcc -o libwarnapp_algo.dylib -shared -I/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home/include/ \
	-I/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home/include/darwin/ warnapp_algo.c 


java -Djava.library.path=`pwd` AlgoViz
