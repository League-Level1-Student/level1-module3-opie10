package _02_backpack;

public class BackpackRunner {
	public static void main(String[] args) {
		
		Backpack hi = new Backpack ();
		Pencil h = new Pencil();
		Textbook i = new Textbook ();
		Ruler o = new Ruler ();
		hi.putInBackpack(h);
		hi.putInBackpack(o);
		hi.putInBackpack(i);
		hi.packAndCheck();
	}
}
