package com.allai.allai;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.FileUtils;
import java.util.concurrent.CompletableFuture;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

import org.json.JSONObject;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
// Comment out FFmpegKit imports until dependency is added
// import com.arthenica.ffmpegkit.FFmpegKit;
// import com.arthenica.ffmpegkit.ReturnCode;


import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
    public static MethodChannel methodChannel;
    final String channel = "wellbeings/channel";
    private InputStream inputStream;

    @RequiresApi(api = Build.VERSION_CODES.O)
    @Override

    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        GeneratedPluginRegistrant.registerWith(flutterEngine);
        Intent intent = getIntent();
        Uri data = intent.getData();

        methodChannel = new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), channel);
        methodChannel.setMethodCallHandler((call, result) -> {
            if (call.method.equals("getAppInfo")) {
                try {
                    final PackageManager pm = getPackageManager();
                    List<ApplicationInfo> packages = pm.getInstalledApplications(PackageManager.GET_META_DATA);

                    ArrayList<Map<String, Object>> arrayList = new ArrayList<>();

                    for (ApplicationInfo info : packages) {
                        JSONObject object = new JSONObject();
                        object.put("name", info.name);
                        object.put("icon", info.icon);
                        object.put("category", String.valueOf(info.category));
                        Map<String, Object> jsonMap = new HashMap<>();
                        Iterator<String> keys = object.keys();
                        while (keys.hasNext()) {
                            String key = keys.next();
                            Object value = object.get(key);
                            jsonMap.put(key, value);
                        }
                        arrayList.add(jsonMap);
                    }

                    result.success(arrayList);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (call.method.equals("resolveContent")) {
                ArrayList<String> path = (ArrayList<String>) call.arguments;
                Context context = this.getApplicationContext();
                try {

                    inputStream = context.getContentResolver().openInputStream(Uri.parse(path.get(0)));
                    String fileName = path.get(0).split("/")[path.get(0).split("/").length - 1];
                    String fielPath = context.getFilesDir().getPath();
                    File tempFile = new File(fielPath + "/" + fileName);
                    OutputStream outputStream = new FileOutputStream(tempFile);
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                        FileUtils.copy(inputStream, outputStream);
                        result.success(tempFile.getPath());
                    }

                } catch (FileNotFoundException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }

            }else if (call.method.equals("generateAvatar")){
                Intent intent1 = new Intent(this, GenerateAvatarActivity.class);
                startActivity(intent1);
            }
            else if(call.method.equals("convertMp4ToMp3"));
            {
                try{
                   String mp4Path = call.argument("mp4Path");
        String outputPath = call.argument("outputPath");
                    // Comment out FFmpegKit usage until dependency is added
                    /*
                    convertMp4ToMp3(mp4Path, outputPath).thenAccept(convertedPath -> {
                        System.out.println("Conversion successful, file saved at: " + convertedPath);
                        result.success(convertedPath);
                    }).exceptionally(e -> {
                        System.err.println("Conversion failed: " + e.getMessage());
                        return null; // To handle the completion exceptionally
                    });
                    */
                    // Temporary response until FFmpegKit is added
                    result.error("UNAVAILABLE", "FFmpegKit not available. Please add dependency.", null);
//                if (resultPath != null) {
//                    result.success(resultPath );
//                } else {
//                    result.error("UNAVAILABLE", "Conversion failed.", null);
//                }
            } 
              catch (Exception e) {
                    e.printStackTrace();
                }
        
            }
               
        
        });
    }
public  String convertMp4ToMp3i(String mp4Path, String outputPath) {
      if (mp4Path == null) return null;
      String mpepath=outputPath;
        String command = "-i " + mp4Path + " -vn -ar 44100 -ac 2 -ab 192k -f mp3 " + outputPath;
         // Comment out FFmpegKit usage until dependency is added
         /*
         FFmpegKit.executeAsync(command, session -> {

            if (ReturnCode.isSuccess(session.getReturnCode())) {
                // Conversion was successful


            } else {
                // Conversion failed
                //outputPath = null;
            }
        });
        */

    return outputPath;

        // Implement conversion logic here. This might involve using MediaCodec or a third-party library.

    }
    public CompletableFuture<String> convertMp4ToMp3(String mp4Path, String outputPath) {
        CompletableFuture<String> futureResult = new CompletableFuture<>();

        if (mp4Path == null) {
            futureResult.completeExceptionally(new IllegalArgumentException("mp4Path cannot be null"));
            return futureResult;
        }

        String command = "-i " + mp4Path + " -vn -ar 44100 -ac 2 -ab 192k -f mp3 " + outputPath;

        // Comment out FFmpegKit usage until dependency is added
        /*
        FFmpegKit.executeAsync(command, session -> {
            if (ReturnCode.isSuccess(session.getReturnCode())) {
                // Conversion was successful
                futureResult.complete(outputPath);
            } else {
                // Conversion failed
                futureResult.completeExceptionally(new Exception("Conversion failed with return code: " + session.getReturnCode()));
            }
        });
        */
        
        // Temporary implementation until FFmpegKit is added
        futureResult.completeExceptionally(new Exception("FFmpegKit not available. Please add dependency."));

        return futureResult;
    }
}