package is.ru.gag;

import is.ru.gag.data.DataConnection;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

public class CheckFD {
    public static void main(String[] args) throws FileNotFoundException, IOException {
        DataConnection dataConnection = new DataConnection();

        String container = "";
        List<String> list = new ArrayList<String>();

        String content = "";

        for(int count = 0; count < 167; count++) {
            String filePath = "FDQUERIES_" + count + ".sql";
            try
            {
                content = new String ( Files.readAllBytes( Paths.get(filePath) ) );
                list.add(content);
            }
            catch (IOException e)
            {
                e.printStackTrace();
            }
        }



        try {
            dataConnection.pushList(list);
        } catch (Exception ex) {
            ex.printStackTrace();
        }


    }
}
