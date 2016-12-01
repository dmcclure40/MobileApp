package com.example.davismcclure.lab8;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;

public class ReceiveTequilaActivity extends AppCompatActivity {

    private String tequilaBar;
    private String tequilaBarURL;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_receive_tequila);

        //get intent
        Intent intent = getIntent();
        tequilaBar = intent.getStringExtra("tequilaBar");
        tequilaBarURL = intent.getStringExtra("tequilaBarURL");
        System.out.println(tequilaBar);
        System.out.println(tequilaBarURL);

        //update text view
        TextView messageView = (TextView) findViewById(R.id.tequilaBarTextView);
        messageView.setText("You should check out " + tequilaBar);

        //get image button
        final ImageButton imageButton = (ImageButton) findViewById(R.id.imageButton);
        //create listener
        View.OnClickListener onclick = new View.OnClickListener(){
            public void onClick(View view){
                loadWebSite(view);
            }
        };
        //add listener to the button
        imageButton.setOnClickListener(onclick);
    }

    public void loadWebSite(View view){
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(tequilaBarURL));
        startActivity(intent);
    }
}
