package music.business;

import java.text.NumberFormat;
import java.io.Serializable;

import jakarta.persistence.*;

@Entity
public class product implements Serializable {

    @Id
    @GeneratedValue
    private Long productId;
    private String code;
    private String description;
    private double price;
    private String image;
    private String detail;

    public product() {}

    public Long getId() {
        return productId;
    }

    public void setId(Long productId) {
        this.productId = productId;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }
    public String getImage(){return image;}
    public String setImage(String image){ this.image = image;
        return this.image;}
    public void setDescription(String description) {
        this.description = description;
    }
    public String getDetail(){return detail;}
    public void setDetail(String detail){this.detail = detail;}

    public String getDescription() {
        return description;
    }

    public String getArtistName() {
        String artistName =
                description.substring(0, description.indexOf(" - "));
        return artistName;
    }

    public String getAlbumName() {
        String albumName =
                description.substring(description.indexOf(" - ") + 3);
        return albumName;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getPrice() {
        return price;
    }

    public String getPriceCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(price);
    }

    public String getImageURL() {
        return image;
    }

    public String getProductType() {
        return "Limited edition";
    }
}