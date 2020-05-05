package _05_netflix;

public class THECEO {
public static void main(String[] args) {
	Movie LOTR = new Movie ("Lord Of the Rings", 1000000000) ;
	Movie hob = new Movie ("Hobbit",50000000) ;
	Movie swrs = new Movie ("Star Wars: The Rise of Skywalker", 500000) ;
	Movie hpcs = new Movie ("Harry Potter and the Chamber of Secrets", -1000000000) ;
	Movie j = new Movie ("Jumanji", 25) ;
	NetflixQueue hi = new NetflixQueue ();
String tl = LOTR.getTicketPrice();
	System.out.println(tl);	
	hi.addMovie(hob);
	hi.addMovie(LOTR);
	hi.addMovie(hpcs);
	hi.addMovie(j);
	hi.addMovie(swrs);
	hi.printMovies();
	hi.sortMoviesByRating();
	Movie bm = hi.getBestMovie();

String sbm =	bm.getTitle();
System.out.println("The best movie is " +sbm);
Movie scbm = hi.getMovie(1);
String tsbm = scbm.getTitle();
System.out.println("The second best movie is " +tsbm);

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

}
