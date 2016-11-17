package com.example.davismcclure.grillguide;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class ChickenActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_chicken);

        Button goToVeggies = (Button) findViewById(R.id.veggieButton);
        goToVeggies.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                Intent vegtable = new Intent(ChickenActivity.this, VegtableActivity.class);
                startActivity(vegtable);
            }

        });

        Button goToHome = (Button) findViewById(R.id.homeButton);
        goToHome.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                Intent home = new Intent(ChickenActivity.this, MainActivity.class);
                startActivity(home);
            }

        });

        Button goToHamburger = (Button) findViewById(R.id.hamburgerButton);
        goToHamburger.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                Intent hamburger = new Intent(ChickenActivity.this, HamburgerActivity.class);
                startActivity(hamburger);
            }

        });
    }
}
