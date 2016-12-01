package com.example.davismcclure.lab8;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.Spinner;

public class MainActivity extends AppCompatActivity{

    private TequilaBar myTequilaBar = new TequilaBar();

    public void findTequila(View view){
        //get spinner
        Spinner crowdSpinner = (Spinner)findViewById(R.id.spinner);
        //get spinner item array position
        Integer crowd = crowdSpinner.getSelectedItemPosition();
        //set the tequila bar
        myTequilaBar.setTequilaBar(crowd);
        //get suggested tequila bar
        String suggestedTequilaBar = myTequilaBar.getTequilaBar();
        //get URL of suggested tequila bar
        String suggestedTequilaBarURL = myTequilaBar.getTequilaBarURL();
        System.out.println(suggestedTequilaBar);
        System.out.println(suggestedTequilaBarURL);

        //create an intent
        Intent intent = new Intent(this, ReceiveTequilaActivity.class);

        //pass data
        intent.putExtra("tequilaBar", suggestedTequilaBar);
        intent.putExtra("tequilaBarURL", suggestedTequilaBarURL);

        //start the intent
        startActivity(intent);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //get button
        final Button button = (Button) findViewById(R.id.button);
        //create listener
        View.OnClickListener onclick = new View.OnClickListener(){
            public void onClick(View view){
                findTequila(view);
            }
        };
        //add listener to the button
        button.setOnClickListener(onclick);
    }
}
