package com.kraken;

import android.net.Uri;
import android.webkit.*;

public class MyWebViewClient extends WebViewClient {
	@Override
	public boolean shouldOverrideUrlLoading(WebView view, String url)
	{
		if (Uri.parse(url).getHost().contains("amazonaws.com"))
		{
			return false;
		}
		else
		{
			return true;
		}
	}
}
