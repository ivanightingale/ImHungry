package info;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class SortLists {
    public static ArrayList<Info> sortAlphabetically(ArrayList<Info> list) {
        if (list == null) return null;

        Collections.sort(list, new AlphabeticalComp());

        return list;
    }

    public static ArrayList<Info> sortByRating(ArrayList<Info> list){
        if (list == null) return null;

        Collections.sort(list, new RatingComp());

        return list;
    }

    static class RatingComp implements  Comparator<Info> {
        @Override
        public int compare(Info i1, Info i2){
            int rating1 = i1.rating;
            int rating2 = i2.rating;
            if (rating1 < rating2) return 1;
            else return -1;
        }
    }

    static class AlphabeticalComp implements Comparator<Info> {
        @Override
        public int compare(Info i1, Info i2){
            String name1 = i1.name;
            String name2 = i2.name;
            if (name1.compareTo(name2) > 0) return 1;
            else return -1;
        }
    }
}
