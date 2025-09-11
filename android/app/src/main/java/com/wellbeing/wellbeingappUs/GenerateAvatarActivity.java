package com.wellbeing.wellbeingappUs;

import androidx.annotation.NonNull;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.view.View;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import io.flutter.embedding.android.FlutterActivity;


public class GenerateAvatarActivity extends FlutterActivity {
    static final int CAMERA_PERMISSION_CODE = 100;
    static final int STORAGE_PERMISSION_CODE = 101;
    private InputStream inputStream;
    private WebView webView;
    private static final int MY_CAMERA_REQUEST_CODE = 100;
    private ValueCallback<Uri[]> mFilePathCallback;

    @SuppressLint("SetJavaScriptEnabled")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);


        setContentView(R.layout.activity_generate_avatar);

        // Find the WebView by its unique ID
        webView = findViewById(R.id.webViewAvatar);
        WebSettings settings = webView.getSettings();

        settings.setJavaScriptCanOpenWindowsAutomatically(true);

        settings.setDomStorageEnabled(true);
        // loading https://www.geeksforgeeks.org url in the WebView.

        // this will enable the javascript.
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().getAllowFileAccessFromFileURLs();
        webView.getSettings().setAllowFileAccess(true);

        webView.setLayerType(View.LAYER_TYPE_NONE, null);

        webView.addJavascriptInterface(new WebViewInterface(getApplicationContext()), " WebView");
        // WebViewClient allows you to handle
        // onPageFinished and override Url loading.
        webView.setWebViewClient(new WebViewClient());
        webView.getSettings().setMediaPlaybackRequiresUserGesture(false);

        webView.setWebChromeClient(new WebChromeClient() {
            @Override
            public void onPermissionRequest(final PermissionRequest request) {
                request.grant(request.getResources());
            }

            @Override
            public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> filePathCallback, FileChooserParams fileChooserParams) {
                Intent camera_intent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
                startActivityForResult(camera_intent    , 1000);
                mFilePathCallback =  filePathCallback;
            return true;

            }

        });
        webView.loadUrl("https://meditationapp.readyplayer.me/en/avatar?clearCache&bodyType=halfbody&frameApi.readyplayer.me%2F404=");


    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if(requestCode==1000&&resultCode==RESULT_OK&&mFilePathCallback!=null){
            Bitmap thumbnail = (Bitmap) data.getExtras().get("data");
            ByteArrayOutputStream bytes = new ByteArrayOutputStream();
            thumbnail.compress(Bitmap.CompressFormat.JPEG, 90, bytes);
            File destination = new File(Environment.getExternalStorageDirectory(),"temp.jpg");
            FileOutputStream fo;
            try {
                fo = new FileOutputStream(destination);
                fo.write(bytes.toByteArray());
                fo.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            Uri[] uriData =new Uri[]{Uri.fromFile(destination)};
            mFilePathCallback.onReceiveValue(uriData);
        }

    }

    @Override
    public void onRequestPermissionsResult(int requestCode,
                                           @NonNull String[] permissions,
                                           @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);

        if (requestCode == CAMERA_PERMISSION_CODE) {

            // Checking whether user granted the permission or not.
            if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {

                // Showing the toast message
                Toast.makeText(this, "Camera Permission Granted", Toast.LENGTH_SHORT).show();
            } else {
                Toast.makeText(this, "Camera Permission Denied", Toast.LENGTH_SHORT).show();
            }
        } else if (requestCode == STORAGE_PERMISSION_CODE) {
            if (grantResults.length > 0
                    && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                Toast.makeText(this, "Storage Permission Granted", Toast.LENGTH_SHORT).show();
            } else {
                Toast.makeText(this, "Storage Permission Denied", Toast.LENGTH_SHORT).show();
            }
        }
    }







//    @Override
//    protected void onStop() {
//        super.onStop();
//        if (webView != null) {
//            webView.stopLoading();
//            webView.destroy();
//            webView = null;
//        }
//    }



}
