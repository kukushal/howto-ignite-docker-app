package howto.ignite.docker.app;

import javax.cache.Cache;
import org.apache.ignite.Ignite;
import org.apache.ignite.Ignition;

public class App {
    public static void main(String[] args) {
        try (Ignite ignite = Ignition.start("ignite.xml")) {
            Cache<Integer, String> cache = ignite.getOrCreateCache("default");

            cache.put(1, "entry 1");

            System.out.format("1 -> \"%s\"\n", cache.get(1));
        }
    }
}
