package com.example.davismcclure.lab7;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.Spinner;
import android.widget.EditText;
import android.widget.ToggleButton;
import android.widget.RadioGroup;
import android.widget.ImageView;


public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void findClass (View view){
        //edittext
        EditText name = (EditText) findViewById(R.id.nameEditText);
        String nameValue = name.getText().toString();
        System.out.println(nameValue);

        ImageView classImageView=(ImageView)findViewById(R.id.imageView);

        //spinner
        Spinner raceSpinner = (Spinner) findViewById(R.id.raceSpinner);
        String raceType = String.valueOf(raceSpinner.getSelectedItem());

        //toggle button
        ToggleButton toggle = (ToggleButton)findViewById(R.id.genderToggleButton);
        boolean gender = toggle.isChecked();
        String genderString;
        if(gender){
            genderString="Male";
        } else {
            genderString="Female";
        }

        //radio buttons
        RadioGroup classType =(RadioGroup)findViewById(R.id.classRadioGroup);
        String classT="";
        int class_id=classType.getCheckedRadioButtonId();
        switch(class_id){
            case R.id.radioButton1:
                classT="Warlock";
                classImageView.setImageResource(R.drawable.warlock);
                break;
            case R.id.radioButton2:
                classT="Hunter";
                classImageView.setImageResource(R.drawable.hunter);
                break;
            case R.id.radioButton3:
                classT="Titan";
                classImageView.setImageResource(R.drawable.titan);
        }




        //textview
        System.out.println("in method");
        TextView guardian = (TextView) findViewById(R.id.imageTitle);
        guardian.setText(nameValue + " is a " + genderString + " " + raceType + " " + classT);
    }
}