/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author Maryanne Alice
 */
public class Cryptography {
    
    public Cryptography() {
    }
    
    public static String Cryptography(String password) throws NoSuchAlgorithmException, 
        UnsupportedEncodingException {
        MessageDigest a = MessageDigest.getInstance("SHA-256");
             byte b[] = a.digest(password.getBytes("UTF-8"));
        MessageDigest c = MessageDigest.getInstance("MD5");
        byte d[] = c.digest(password.getBytes("UTF-8"));
        byte[] p = new byte[b.length + d.length];
           System.arraycopy(b, 0, p, 0, b.length);
           System.arraycopy(d, 0, p, b.length, d.length);
        byte digestMessage[] = p;
        StringBuilder hexPassword = new StringBuilder();
        for (byte aByte : digestMessage) {
           hexPassword.append(String.format("%02X", 0xFF & aByte));
        }
        return hexPassword.toString();
    }

}