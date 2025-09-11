package com.wellbeing.wellbeingappUs;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.widget.Toast;

import androidx.appcompat.app.AlertDialog;

import org.json.JSONObject;

public class WebViewInterface {
    private Context context;

    public WebViewInterface(Context context) {
        this.context = context;
    }

    @android.webkit.JavascriptInterface
    public void receiveData(String text) {
        String url;

        if (text.endsWith(".glb")) {
            url = text;
        } else {
            try {
                JSONObject jsonObject = new JSONObject(text);
                JSONObject data = jsonObject.getJSONObject("data");
                url = data.getString("url");
                Log.e("Avatar url**********",url.toString());
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }

        ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService(Context.CLIPBOARD_SERVICE);
        ClipData clipData = ClipData.newPlainText("Ready Player Me", url);
        clipboardManager.setPrimaryClip(clipData);
        Toast.makeText(context, "Url copied into clipboard.", Toast.LENGTH_SHORT).show();

        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle("Result");
        builder.setMessage(url);
        builder.setPositiveButton("Ok", (dialog, which) -> {
            dialog.dismiss();
            context.startActivity(new Intent(context, MainActivity.class));
        });
        AlertDialog dialog = builder.create();
        dialog.show();
    }
}

