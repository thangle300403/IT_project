package music.business;

import java.util.*;
import java.io.Serializable;

public class Cart implements Serializable {

    private List<LineItem> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public void setItems(List<LineItem> lineItems) {
        items = lineItems;
    }

    public List<LineItem> getItems() {
        return items;
    }

    public int getCount() {
        return items.size();
    }

public void addItem(LineItem item) {
    String code = item.getProduct().getCode();
    int quantity = item.getQuantity();
    for (int i = 0; i < items.size(); i++) {
        LineItem lineItem = items.get(i);
        if (lineItem.getProduct().getCode().equals(code)) {
            if (quantity == lineItem.getQuantity()) {
                lineItem.setQuantity(quantity);
            } else if (quantity != 1) {
                lineItem.setQuantity(quantity);

            } else {
                lineItem.setQuantity(lineItem.getQuantity() + quantity);
            }
            return;
        }
    }
    items.add(item);
}

    public void removeItem(LineItem item) {
        String code = item.getProduct().getCode();
        for (int i = 0; i < items.size(); i++) {
            LineItem lineItem = items.get(i);
            if (lineItem.getProduct().getCode().equals(code)) {
                items.remove(i);
                return;
            }
        }
    }
}
