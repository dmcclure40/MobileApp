package com.example.davismcclure.grillguide;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class SteakActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_steak);

        Button goToHome = (Button) findViewById(R.id.homeButton);
        goToHome.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                Intent home = new Intent(SteakActivity.this, MainActivity.class);
                startActivity(home);
            }

        });

        Button goToVeggies = (Button) findViewById(R.id.veggieButton);
        goToVeggies.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                Intent vegtable = new Intent(SteakActivity.this, VegtableActivity.class);
                startActivity(vegtable);
            }

        });

        Button goToHamburger = (Button) findViewById(R.id.hamburgerButton);
        goToHamburger.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                Intent hamburger = new Intent(SteakActivity.this, HamburgerActivity.class);
                startActivity(hamburger);
            }

        });
    }
}
