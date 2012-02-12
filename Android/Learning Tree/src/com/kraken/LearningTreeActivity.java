package com.kraken;

import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class LearningTreeActivity extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        WebView wvMain = (WebView)findViewById(R.id.webMain);
        wvMain.loadUrl("http://bit.ly/z4EAGx");
        wvMain.setWebViewClient(new WebViewClient());
        
        WebSettings wbSettings = wvMain.getSettings();
        wbSettings.setJavaScriptEnabled(true);
    }
}