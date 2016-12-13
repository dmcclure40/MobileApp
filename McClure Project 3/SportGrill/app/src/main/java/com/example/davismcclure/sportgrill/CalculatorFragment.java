package com.example.davismcclure.sportgrill;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatDialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.media.MediaPlayer;
import android.os.CountDownTimer;
import android.util.Log;;
import android.widget.Button;
import android.widget.SeekBar;
import android.widget.TextView;



public class CalculatorFragment extends Fragment {
    public CalculatorFragment() {
        // Required empty public constructor
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View T = inflater.inflate(R.layout.fragment_calculator, container, false);

        timerSeekBar = (SeekBar) T.findViewById(R.id.timerSeekBar);
        timerTextView = (TextView) T.findViewById(R.id.timerTextView);
        controllerButton = (Button) T.findViewById(R.id.controllerButton);
        controllerButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View T) {
                controlTimer(T);
            }
        });


        timerSeekBar.setMax(600);
        timerSeekBar.setProgress(30);

        timerSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {

                updateTimer(progress);

            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {

            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {

            }


        });

        return T;
    }




    SeekBar timerSeekBar;
    TextView timerTextView;
    Button controllerButton;
    Boolean counterIsActive = false;
    CountDownTimer countDownTimer;


    public void resetTimer() {

        timerTextView.setText("@string/timerTextView");
        timerSeekBar.setProgress(30);
        countDownTimer.cancel();
        controllerButton.setText("@string/controllerButton");
        timerSeekBar.setEnabled(true);
        counterIsActive = false;

    }

    public void updateTimer(int secoundsLeft) {

        int minutes = (int) secoundsLeft / 60;
        int secounds = secoundsLeft - minutes * 60;

        String secoundString = Integer.toString(secounds);

        if (secounds <= 9) {

            secoundString = "0" + secoundString;

        }


        timerTextView.setText(Integer.toString(minutes) + ":" + secoundString);
    }



    public void controlTimer(View T){

        if (counterIsActive == false) {


            counterIsActive = true;
            timerSeekBar.setEnabled(false);
            controllerButton.setText("Stop");

            countDownTimer = new CountDownTimer(timerSeekBar.getProgress() * 1000 + 100, 1000) {




                @Override
                public void onTick(long millisUntilFinished) {

                    updateTimer((int) millisUntilFinished / 1000);


                }

                @Override
                public void onFinish() {


                    resetTimer();
                    MediaPlayer mplayer = MediaPlayer.create(getActivity().getApplicationContext(), R.raw.airhorn);
                    mplayer.start();

                }
            }.start();


        } else {

            resetTimer();

        }
    }





}
