package com.example.davismcclure.grillguide;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class HamburgerActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_hamburger);

        Button goToChicken = (Button) findViewById(R.id.chickenButton);
        goToChicken.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                Intent chicken = new Intent(HamburgerActivity.this, ChickenActivity.class);
                startActivity(chicken);
            }

        });

        Button goToSteak = (Button) findViewById(R.id.steakButton);
        goToSteak.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                Intent steak = new Intent(HamburgerActivity.this, SteakActivity.class);
                startActivity(steak);
            }

        });

        Button goToHome = (Button) findViewById(R.id.homeButton);
        goToHome.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                Intent home = new Intent(HamburgerActivity.this, MainActivity.class);
                startActivity(home);
            }

        });
    }
}
