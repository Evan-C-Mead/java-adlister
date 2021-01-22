import models.Album;
import models.Author;
import models.Product;
import models.Quote;

import java.util.ArrayList;

public class BeanTest {

    public static void main(String[] args) {
        Album album = new Album();
        album.setId(1);
        album.setName("Album #1");
        album.setArtist("Music Dude");
        album.setGenre("music");
        album.setReleaseDate(2012);
        album.setSales(67000);

        System.out.println("This album is: " + album.getName() + ", by " + album.getArtist());

        Author author = new Author();
        author.setId(1);
        author.setFirstName("Writer");
        author.setLastName("Dude");

        Quote firstQuote = new Quote();
        firstQuote.setId(1);
        firstQuote.setAuthor(author);
        firstQuote.setContent("This is my quote!");

        Quote secondQuote = new Quote();
        secondQuote.setId(2);
        secondQuote.setAuthor(author);
        secondQuote.setContent("This is my second quote! It's longer than the first!");

        ArrayList<Quote> quotes = new ArrayList<>();
        quotes.add(firstQuote);
        quotes.add(secondQuote);

        for (Quote q : quotes) {
            System.out.println("The quote is: " + q.getContent());
            System.out.println("The author is: " + q.getAuthor().getFirstName() + " " + q.getAuthor().getLastName());
        }

        DaoFactory.getProductsDao().all(); // creates a connection to the DB
        DaoFactory.getProductsDao().insert(new Product()); // keeps using existing connection to DB

    }
}
