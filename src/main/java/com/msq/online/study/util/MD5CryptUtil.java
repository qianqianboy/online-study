package com.msq.online.study.util;
public class MD5CryptUtil {
    public static String getSalts(String password) {
        String[] salts = password.split("\\$");
        if (salts.length < 1) {
            return "";
        }
        String mysalt = "";
        for (int i = 1; i < 3; i++) {
            mysalt += "$" + salts[i];
        }
        mysalt += "$";
        return mysalt;
    }
}
