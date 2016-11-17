package com.example.davismcclure.grillguide;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class VegtableActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_vegtable);

        Button goToHome = (Button) findViewById(R.id.homeButton);
        goToHome.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                Intent home = new Intent(VegtableActivity.this, MainActivity.class);
                startActivity(home);
            }

        });

        Button goToSteak = (Button) findViewById(R.id.steakButton);
        goToSteak.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                Intent steak = new Intent(VegtableActivity.this, SteakActivity.class);
                startActivity(steak);
            }

        });

        Button goToChicken = (Button) findViewById(R.id.chickenButton);
        goToChicken.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                Intent chicken = new Intent(VegtableActivity.this, ChickenActivity.class);
                startActivity(chicken);
            }

        });
    }
}
