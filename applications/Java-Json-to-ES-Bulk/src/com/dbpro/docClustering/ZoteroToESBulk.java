package com.dbpro.docClustering;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import sun.reflect.generics.reflectiveObjects.NotImplementedException;

import java.io.*;

@SuppressWarnings("unchecked")
public class ZoteroToESBulk {
    /**
     * Inserts a JSON object before each element in the library because
     * Elasticsearch's Bulk API expects the json file to look like this
     * {@code
     *  action_and_meta_data\n
     *  optional_source\n
     *  action_and_meta_data\n
     *  optional_source\n
     * }
     * This function inserts the action_and_meta_data line
     *
     * @param id the id that the object will be indexed with.
     */
    private static JSONObject writeJSONBulkActionAndMetaData(int id){
        JSONObject jsonBulkOperator = new JSONObject();
        JSONObject jsonBulkOperatorSubObject = new JSONObject();
        jsonBulkOperatorSubObject.put("_index", "zotero");
        jsonBulkOperatorSubObject.put("_type", "entry");
        jsonBulkOperatorSubObject.put("_id", id);
        jsonBulkOperator.put("index", jsonBulkOperatorSubObject);
        return jsonBulkOperator;
    }

    /**
     * Converts the date-parts array in the Zotero CSL json file to a proper date String in the format
     * {@code yyyy-MM-dd}, {@code yyyy-MM} or {@code yyyy}
     * @param jsonObject A whole json entry from the Zotero library.
     */
    private static void datePartsToDateString(JSONObject jsonObject){
        JSONObject issued =(JSONObject) jsonObject.get("issued");
        if(issued == null){
            return;
        }
        JSONArray dateParts = (JSONArray) issued.get("date-parts");
        JSONArray datePartsArray = (JSONArray) dateParts.get(0);
        String dateString = buildDateString(datePartsArray);
        jsonObject.put("issued", dateString);
    }

    /**
     * builds a date string from the date Parts array of the Zotero library JSON file.
     * @param dateParts the "date-parts" array.
     */
    private static String buildDateString(JSONArray dateParts){
        StringBuilder dateStringBuilder = new StringBuilder();
        for(Object singleDatePart : dateParts){
            if(String.valueOf(singleDatePart).length() < 2){
                dateStringBuilder.append("0");
            }
            dateStringBuilder.append(singleDatePart).append("-");
        }

        dateStringBuilder.deleteCharAt(dateStringBuilder.length()-1);
        return dateStringBuilder.toString();
    }

    private static void reformatAuthorsObject(JSONObject jsonObject){
        JSONArray authors = (JSONArray) jsonObject.get("author");
        if(authors == null){
            return;
        }
        StringBuilder authorStringBuilder;
        JSONArray authorsNew = new JSONArray();
        for (Object author :
                authors){
            authorStringBuilder = new StringBuilder();
            JSONObject authorObject = (JSONObject) author;
            authorStringBuilder.append(authorObject.get("family")).append(", ").append(authorObject.get("given"));
            authorsNew.add(authorStringBuilder.toString());
        }
        jsonObject.put("author", authorsNew);

    }


    public static void main(String[] args) {
        JSONParser parser = new JSONParser();
        if(args.length < 1){
            System.out.println("Please give a relative/absolute path to the json file:");
        }
        else {
            String filePath = args[0];
            try {

                Object object = parser.parse(new FileReader(filePath));
                FileWriter file = new FileWriter("request-data.json", false);
                JSONArray jsonArray = (JSONArray) object;
                int id_counter = 1;
                for (Object obj : jsonArray) {

                    JSONObject jsonBulkActionAndMetaDataHeader = writeJSONBulkActionAndMetaData(id_counter);
                    file.append(jsonBulkActionAndMetaDataHeader.toJSONString()).append("\n");

                    JSONObject jsonObject = (JSONObject) obj;
                    jsonObject.put("id", id_counter);

                    datePartsToDateString(jsonObject);
                    reformatAuthorsObject(jsonObject);

                    file.append(jsonObject.toJSONString()).append("\n");

                    id_counter++;

                }
                file.close();
            } catch (FileNotFoundException e) {
                System.out.print("Couldn't read file");
            } catch (IOException e) {
                System.out.print("IO error");
            } catch (ParseException e) {
                System.out.print("Couldn't parse");
            }

        }
    }
}
