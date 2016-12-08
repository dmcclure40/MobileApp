package com.example.davismcclure.afinal;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.ToggleButton;
import android.widget.CheckBox;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //get button
        final Button button = (Button) findViewById(R.id.button);
        //create listener
        View.OnClickListener onclick = new View.OnClickListener(){
            public void onClick(View view){
                findTreat(view);
            }
        };
        //add listener to the button
        button.setOnClickListener(onclick);
    }

    private IceCreamShop myIceCreamShop = new IceCreamShop();

    public void findTreat (View view){
        //edittext
        EditText name = (EditText) findViewById(R.id.nameEditText);
        String nameValue = name.getText().toString();
        System.out.println(nameValue);

        ImageView treatImageView=(ImageView)findViewById(R.id.imageView);

        //spinner
        Spinner treatTypeSpinner = (Spinner) findViewById(R.id.treatTypeSpinner);
        String treatType = String.valueOf(treatTypeSpinner.getSelectedItem());

        //toggle button
        ToggleButton toggle = (ToggleButton)findViewById(R.id.cupToggleButton);
        boolean holder = toggle.isChecked();
        String holderString;
        if(holder){
            holderString="Cup";
        } else {
            holderString="Cone";
        }

        //radio buttons
        RadioGroup flavorType =(RadioGroup)findViewById(R.id.flavorRadioGroup);
        String flavorT="";
        int class_id=flavorType.getCheckedRadioButtonId();
        switch(class_id){
            case R.id.radioButton1:
                flavorT="Death by Chocolate";
                treatImageView.setImageResource(R.drawable.chocolate);
                break;
            case R.id.radioButton2:
                flavorT="Salted Caramel";
                treatImageView.setImageResource(R.drawable.caramel);
                break;
            case R.id.radioButton3:
                flavorT="Cookies and Cream";
                treatImageView.setImageResource(R.drawable.cookiescream);
        }

        String checkbox_string="";
        CheckBox check1=(CheckBox)findViewById(R.id.sprinkles);
        boolean checked1 = check1.isChecked();
        if(checked1){
            checkbox_string += " sprinkles,";
        }

        CheckBox check2 = (CheckBox) findViewById(R.id.hotFudge);
        boolean checked2 = check2.isChecked();
        if(checked2){
            checkbox_string += " hot fudge,";
        }

        CheckBox check3 = (CheckBox) findViewById(R.id.nuts);
        boolean checked3 = check3.isChecked();
        if(checked3){
            checkbox_string += " nuts,";
        }


        //textview
        System.out.println("in method");
        TextView creation = (TextView) findViewById(R.id.imageTitle);
        creation.setText("My creation named " + nameValue + " is a " + flavorT + " " + treatType + " with " + checkbox_string + " in a " + holderString);

        //Integer shop = flavorType.getCheckedRadioButtonId();
        //myIceCreamShop.setIceCreamShop(shop);
        //String suggestedIceCreamShop = myIceCreamShop.getIceCreamShop();
        //get URL of suggested tequila bar
        //String suggestedIceCreamShopURL = myIceCreamShop.getIceCreamShopURL();
        //System.out.println(suggestedIceCreamShop);
        //System.out.println(suggestedIceCreamShopURL);

        //create an intent
        //Intent intent = new Intent(this, IceCreamShop.class);

        //pass data
        //intent.putExtra("iceCreamShop", suggestedIceCreamShop);
        //intent.putExtra("iceCreamShopURL", suggestedIceCreamShopURL);

        //start the intent
        //startActivity(intent);
    }
}
