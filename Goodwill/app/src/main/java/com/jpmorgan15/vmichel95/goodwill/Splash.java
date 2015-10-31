package com.jpmorgan15.vmichel95.goodwill;

import android.content.Intent;
import android.os.Build;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import android.os.Handler;
import android.view.WindowManager;

public class Splash extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getSupportActionBar().hide();
        if (Build.VERSION.SDK_INT < 16) {
            getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                    WindowManager.LayoutParams.FLAG_FULLSCREEN);
        }
        setContentView(R.layout.activity_splash);
        new Handler().postDelayed(new Runnable() {
            public void run()
            {
                Intent mainIntent = new Intent(Splash.this,Login.class);
                Splash.this.startActivity(mainIntent);
                Splash.this.finish();
            }
        },3000);
    }
}
