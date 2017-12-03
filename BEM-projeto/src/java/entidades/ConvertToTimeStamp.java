/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Maryanne Alice
 */
public class ConvertToTimeStamp {   

    public ConvertToTimeStamp() {
    }
    

    public static String ConvertToTimeStamp(String obj) throws ParseException {
            SimpleDateFormat dateFormat = new SimpleDateFormat(
                "yyyy-MM-dd hh:mm:ss:SSS");
            Date parsedTimeStamp = dateFormat.parse("2014-08-22 15:02:51:580");
            Timestamp timestamp = new Timestamp(parsedTimeStamp.getTime());
        return timestamp.toString();
    }
    
}
