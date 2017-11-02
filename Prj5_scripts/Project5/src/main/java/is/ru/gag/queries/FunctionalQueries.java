package is.ru.gag.queries;


import java.io.*;



public class FunctionalQueries {
    public static void main(String[] args) throws IOException, FileNotFoundException {

		/* VARIABLE DECLARATIONS */

        // The tables
        String TableNames [] = {"coffees", "customers", "projects", "rentals"};
        String coffees [] = {"DID", "HID", "CID", "DN", "DS", "CN", "CM"};
        String customers [] = {"CID", "CN", "CS", "CNR", "CZ", "CC", "EID"};
        String projects [] = {"ID", "PID", "SID", "SN", "PN", "MID", "MN"};
        String rentals [] = {"PID", "HID", "PN", "S", "HS", "HZ", "HC"};
        String Tables [][] = {coffees, customers, projects, rentals};

        // Other variables
        String query = "";
        int count = 0;
		/* END OF VARIABLE DECLARATIONS */

		/*
		query = String.valueOf(Tables.length) + System.lineSeparator();
		writer.write(query);
		query = String.valueOf(Tables[0].length) + System.lineSeparator();
		writer.write(query);
		*/

		/* QUERY CREATION */

        // Going through the tables

        for (int i = 0; i < Tables.length; i++) {

            // Left hand side
            for (int j = 0; j < Tables[i].length; j++) {

                // Right hand side
                for (int k = 0; k < Tables[i].length; k++) {

                    // Only write query when the left hand side ISN'T the same as the right hand side
                    if (j != k) {
                        Writer writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(
                                "FDQUERIES_" + count + ".sql"), "UTF-8"));
                        query = "SELECT '" + TableNames[i] + ": " + Tables[i][j] + "-->" + Tables[i][k] + "' AS FD, "
                                + "CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY" + System.lineSeparator()
                                + "FROM(" + System.lineSeparator()
                                + " SELECT " + Tables[i][j] + System.lineSeparator()
                                + "  FROM " + TableNames[i] + System.lineSeparator()
                                + " GROUP BY " + Tables[i][j] + System.lineSeparator()
                                + " HAVING COUNT(DISTINCT " + Tables[i][k] + ") > 1" + System.lineSeparator()
                                + ") X;\n" + System.lineSeparator();
                        writer.write(query);
                        writer.close();
                        count++;
                    }
                }
            }
        }

		/* END QUERY CREATION */


    }
}
