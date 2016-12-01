package com.example.davismcclure.lab8;

public class TequilaBar {
    private String tequilaBar;
    private String tequilaBarURL;

    private void setCoffeeInfo(Integer coffeeCrowd){
        switch (coffeeCrowd){
            case 0: //popular
                tequilaBar="Tahona";
                tequilaBarURL="http://www.tahonaboulder.com/tequila/";
                break;
            case 1: //fancy
                tequilaBar="Lola";
                tequilaBarURL="http://www.loladenver.com/";
                break;
            case 2: //mescal
                tequilaBar="Los Chingones";
                tequilaBarURL="http://loschingonesmexican.com/";
                break;
            case 3: //top rated
                tequilaBar="100% de Agave";
                tequilaBarURL="http://100deagave.com/";
                break;
            case 4: //hippie
                tequilaBar="Machete";
                tequilaBarURL="http://machetedenver.com/";
                break;
            default:
                tequilaBar="none";
                tequilaBarURL="https://www.google.com/search?q=boulder+coffee+shops&ie=utf-8&oe=utf-8";
        }
    }

    public void setTequilaBar(Integer coffeeCrowd){

        setCoffeeInfo(coffeeCrowd);
    }

    public void setTequilaBarURL(Integer coffeeCrowd){

        setCoffeeInfo(coffeeCrowd);
    }

    public String getTequilaBar(){

        return tequilaBar;
    }

    public String getTequilaBarURL(){

        return tequilaBarURL;
    }
}
