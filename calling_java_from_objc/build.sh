rm -rf *.class

javac WarnAppChartDisplay.java

#gcc -o algo_tool \
#        -L /usr/java/latest/jre/lib/amd64/server/ \
#        -ljvm \
#        -I /usr/java/latest/include/ \
#        -I /usr/java/latest/include/linux/ \
#        algo_tool.c


gcc -framework Foundation -o algo_tool \
	-I/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home/include/ \
	-I/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home/include/darwin/ \
	-L/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home/jre/lib/server/ \
	-ljvm algo_tool.m



export LD_LIBRARY_PATH="/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home/jre/lib/server/"

./algo_tool
