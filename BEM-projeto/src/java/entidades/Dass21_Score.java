/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.util.ArrayList;



/**
 *
 * @author Maryanne Alice
 */
public class Dass21_Score {
    
    private ArrayList<Integer> score = new ArrayList<>();

    public Dass21_Score() { }

    public ArrayList<Integer> getScore() {
        return score;
    }
    
    public void setScore(ArrayList<Integer> score) {
        this.score = score;
    }   
    
    public int getScoreStress() {
        int sum = 0;
        for (int i = 1; i <= score.size(); i++) {
            // q1, q6, q8, q11, q12, q14, q18
            sum = score.get(6) + score.get(1) + score.get(8) + score.get(11)
              + score.get(12) + score.get(14) + score.get(18);
        }
        return sum;
    }
    
    public int getScoreDepression() {
        int sum = 0;
        for (int i = 1; i <= score.size(); i++) {
            //q3, q5, q10, q13, q16, q17, q21 
            sum += score.get(3) + score.get(5) + score.get(10) + score.get(13)
              + score.get(16) + score.get(17) + score.get(21);
        }
        return sum;
    }
    
    public int getScoreAnxiety() {
        int sum = 0;
        for (int i = 1; i <= score.size(); i++){
            //q2, q4, q7, q9, q15, q19, q20
            sum += score.get(2) + score.get(4) + score.get(7) + score.get(9) +
              score.get(15) + score.get(19) + score.get(20);
        }
        return sum;
    }
    
    public String resultDepression() {
        String status = null;
        
        if (getScoreDepression() <= 4) {
            status = "Normal";
        }
        if (getScoreDepression() == 5 || getScoreDepression() == 6) {
            status = "Mild";
        }
        if (getScoreDepression() >= 7 && getScoreDepression() <= 10) {
            status = "Moderate";
        }
        if (getScoreDepression() >= 11 && getScoreDepression() <=13) {
            status = "Severe";
        }
        if (getScoreDepression() >= 14) {
            status = "ExtremelySevere";
        }
        return status;
    }
    
    public String resultAnxiety() {
        String status = null;
        
        if (getScoreAnxiety() <= 3) {
            status = "Normal";
        }
        if (getScoreAnxiety() == 4 || getScoreAnxiety()==5) {
            status = "Mild";
        }
        if (getScoreAnxiety() == 6 || getScoreAnxiety() ==7) {
            status = "Moderate";
        }
        if (getScoreAnxiety() == 8 || getScoreAnxiety() ==9) {
            status = "Severe";
        }
        if (getScoreAnxiety() >= 10) {
            status = "ExtremelySevere";
        }
         
        return status;
    }
  
    public String resultStress() {
        String status = null;
        
        if (getScoreStress() <= 3) {
            status = "Normal";
        }
        if (getScoreStress() == 4 || getScoreStress() == 5) {
            status = "Mild";
        }
        if (getScoreStress() == 6 || getScoreStress() ==7) {
            status = "Moderate";
        }
        if (getScoreStress() == 8 || getScoreStress() ==9) {
            status = "Severe";
        }
        if (getScoreStress() >= 10) {
            status = "ExtremelySvere";
        }
        
        return status;
    }
}
