import models.Album;
import models.Author;
import models.Quote;

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

        Quote quote = new Quote();
        quote.setId(1);
        quote.setAuthor(author);
        quote.setContent("This is my quote!");

        System.out.println("The quote is: " + quote.getContent());
        System.out.println("The author of this quote is: " + quote.getAuthor().getFirstName() + " " + quote.getAuthor().getLastName());
    }
}
