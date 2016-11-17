package com.example.davismcclure.grillguide;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.content.Intent;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button goToChicken = (Button) findViewById(R.id.chickenButton);
        goToChicken.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                Intent chicken = new Intent(MainActivity.this, ChickenActivity.class);
                startActivity(chicken);
            }

        });

        Button goToHamburger = (Button) findViewById(R.id.hamburgerButton);
        goToHamburger.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                Intent hamburger = new Intent(MainActivity.this, HamburgerActivity.class);
                startActivity(hamburger);
            }

        });

      Button goToSteak =(Button) findViewById(R.id.steakButton);
        goToSteak.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View view){
                Intent steak = new Intent(MainActivity.this, SteakActivity.class);
                startActivity(steak);
            }
        });

        Button goToVeggies = (Button) findViewById(R.id.veggieButton);
        goToVeggies.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                Intent vegtable = new Intent(MainActivity.this, VegtableActivity.class);
                startActivity(vegtable);
            }

        });
    }
}
