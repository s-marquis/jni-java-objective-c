
public class AlgoViz {

	native void runAlgo15();

	static {
		System.loadLibrary("warnapp_algo");
	}

	public static void main(String[] args) {
		System.out.println("hello\n");

		System.out.println("java.libary.path=" + System.getProperty("java.library.path") + "\n");
		
		AlgoViz	algoViz = new AlgoViz();
		algoViz.runAlgo15();
	}
}
