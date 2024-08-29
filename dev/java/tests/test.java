public class test {
	public static void main(String[] args) {

	}

	public int[] selection(int[] gamer) {
		int low = gamer[0];
		for (int i = 0; i < gamer.length; i++) {
			
			for (int j = i; j < gamer.length; j++) {
				if (gamer[j] < low) {
					low = gamer[j];
				}
	}
}
