package ansheng.qipao;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MainActivity extends Activity {
    private static final int REQUEST_NOTIFICATION = 1002;
    private static final int REQUEST_OVERLAY = 1001;
    private static final int COLOR_PRIMARY_DARK = Color.parseColor("#6C5CBA");
    private static final int COLOR_BUTTON_BG_LIGHT = Color.parseColor("#EBE5F6");
    private static final int COLOR_BUTTON_TEXT = Color.parseColor("#5C49A8");
    private static final int COLOR_BG = Color.parseColor("#F6F5FA");
    private static final int COLOR_WHITE = Color.parseColor("#FFFFFF");
    private static final int COLOR_TEXT_MAIN = Color.parseColor("#1D1B20");
    private static final int COLOR_TEXT_SUB = Color.parseColor("#49454F");

    private void checkForUpdate() {
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestNotificationPermission();
        createInterface();
        checkForUpdate();
    }

    private void createInterface() {
        ScrollView scrollView = new ScrollView(this);
        scrollView.setBackgroundColor(COLOR_BG);
        scrollView.setFillViewport(true);
        int statusBarHeight = 0;
        int resourceId = getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (resourceId > 0) {
            statusBarHeight = getResources().getDimensionPixelSize(resourceId);
        }
        scrollView.setPadding(dp(16), dp(16) + statusBarHeight, dp(16), dp(16));
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        LinearLayout header = new LinearLayout(this);
        header.setOrientation(1);
        header.setGravity(17);
        header.setPadding(dp(24), dp(24), dp(24), dp(24));
        GradientDrawable headerBg = new GradientDrawable();
        headerBg.setShape(0);
        headerBg.setColor(COLOR_PRIMARY_DARK);
        headerBg.setCornerRadius(dp(20));
        header.setBackground(headerBg);
        header.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        TextView title = new TextView(this);
        title.setText("气泡自动化");
        title.setTextSize(28.0f);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setTextColor(-1);
        header.addView(title, new LinearLayout.LayoutParams(-2, -2));
        TextView subtitle = new TextView(this);
        subtitle.setText("何老师专属定制 · 纯净稳定版");
        subtitle.setTextSize(14.0f);
        subtitle.setTextColor(Color.parseColor("#D8D0F0"));
        subtitle.setPadding(0, dp(4), 0, 0);
        header.addView(subtitle, new LinearLayout.LayoutParams(-2, -2));
        linearLayout.addView(header);
        LinearLayout cardPermission = createCard();
        cardPermission.addView(createTitle("权限设置"));
        cardPermission.addView(createSubTitle("首次使用前请完成以下权限设置"));
        Button btnOverlay = createLightButton("开启悬浮窗权限");
        btnOverlay.setOnClickListener(new View.OnClickListener() { // from class: ansheng.qipao.MainActivity$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createInterface$0(view);
            }
        });
        cardPermission.addView(btnOverlay);
        Button btnAccessibility = createLightButton("开启无障碍服务");
        btnAccessibility.setOnClickListener(new View.OnClickListener() { // from class: ansheng.qipao.MainActivity$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createInterface$1(view);
            }
        });
        cardPermission.addView(btnAccessibility);
        linearLayout.addView(cardPermission);
        LinearLayout cardAction = createCard();
        cardAction.addView(createTitle("开始运行"));
        cardAction.addView(createSubTitle("权限开启后即可显示悬浮窗"));
        Button btnStart = createDarkButton("检查权限并显示悬浮窗");
        btnStart.setOnClickListener(new View.OnClickListener() { // from class: ansheng.qipao.MainActivity$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createInterface$2(view);
            }
        });
        cardAction.addView(btnStart);
        Button btnLogs = createLightButton("查看历史日志");
        btnLogs.setOnClickListener(new View.OnClickListener() { // from class: ansheng.qipao.MainActivity$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createInterface$3(view);
            }
        });
        cardAction.addView(btnLogs);
        linearLayout.addView(cardAction);
        LinearLayout cardAbout = createCard();
        cardAbout.addView(createTitle("关于"));
        Button btnAbout = createLightButton("查看关于信息");
        int statusBarHeight2 = COLOR_TEXT_SUB;
        btnAbout.setTextColor(statusBarHeight2);
        btnAbout.setBackgroundColor(0);
        btnAbout.setOnClickListener(new View.OnClickListener() { // from class: ansheng.qipao.MainActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createInterface$4(view);
            }
        });
        cardAbout.addView(btnAbout);
        linearLayout.addView(cardAbout);
        scrollView.addView(linearLayout);
        setContentView(scrollView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createInterface$0(View v) {
        requestOverlayPermission();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createInterface$1(View v) {
        startActivity(new Intent("android.settings.ACCESSIBILITY_SETTINGS"));
        Toast.makeText(this, "请找到气泡自动化并开启无障碍服务", 1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createInterface$2(View v) {
        checkPermissionAndStart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createInterface$3(View v) {
        showHistoryLogs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createInterface$4(View v) {
        startActivity(new Intent(this, (Class<?>) AboutActivity.class));
    }

    private void checkPermissionAndStart() {
        if (Build.VERSION.SDK_INT >= 23 && !Settings.canDrawOverlays(this)) {
            Toast.makeText(this, "请先开启悬浮窗权限", 1).show();
            requestOverlayPermission();
            return;
        }
        try {
            Intent intent = new Intent(this, (Class<?>) FloatWindowService.class);
            if (Build.VERSION.SDK_INT >= 26) {
                startForegroundService(intent);
            } else {
                startService(intent);
            }
            Toast.makeText(this, "悬浮窗服务已启动", 0).show();
        } catch (Exception e) {
            Toast.makeText(this, "启动失败", 1).show();
        }
    }

    private void requestOverlayPermission() {
        if (Build.VERSION.SDK_INT >= 23 && !Settings.canDrawOverlays(this)) {
            startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + getPackageName())), 1001);
        } else {
            checkPermissionAndStart();
        }
    }

    private void showHistoryLogs() {
        final SharedPreferences prefs = getSharedPreferences("AppPrefs", 0);
        String history = prefs.getString("log_history", "");
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("历史运行日志");
        ScrollView scrollView = new ScrollView(this);
        TextView textView = new TextView(this);
        textView.setPadding(dp(16), dp(16), dp(16), dp(16));
        textView.setTextSize(14.0f);
        textView.setTextColor(COLOR_TEXT_MAIN);
        if (history.trim().isEmpty()) {
            textView.setText("暂无日志记录");
            textView.setGravity(17);
            textView.setTextColor(COLOR_TEXT_SUB);
        } else {
            textView.setText(history);
        }
        scrollView.addView(textView);
        builder.setView(scrollView);
        builder.setPositiveButton("关闭", new DialogInterface.OnClickListener() { // from class: ansheng.qipao.MainActivity$$ExternalSyntheticLambda7
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.setNeutralButton("清除日志", new DialogInterface.OnClickListener() { // from class: ansheng.qipao.MainActivity$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.lambda$showHistoryLogs$6(prefs, dialogInterface, i);
            }
        });
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showHistoryLogs$6(SharedPreferences prefs, DialogInterface dialog, int which) {
        prefs.edit().putString("log_history", "").apply();
        if (FloatWindowService.instance != null) {
            FloatWindowService.instance.clearLogs();
        }
        Toast.makeText(this, "历史日志已清除", 0).show();
    }

    private LinearLayout createCard() {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(1);
        card.setPadding(dp(20), dp(20), dp(20), dp(20));
        GradientDrawable bg = new GradientDrawable();
        bg.setShape(0);
        bg.setColor(COLOR_WHITE);
        bg.setCornerRadius(dp(16));
        card.setBackground(bg);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(-1, -2);
        params.setMargins(0, dp(16), 0, 0);
        card.setLayoutParams(params);
        return card;
    }

    private TextView createTitle(String text) {
        TextView tv = new TextView(this);
        tv.setText(text);
        tv.setTextSize(18.0f);
        tv.setTypeface(Typeface.DEFAULT_BOLD);
        tv.setTextColor(COLOR_TEXT_MAIN);
        tv.setGravity(1);
        tv.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        return tv;
    }

    private TextView createSubTitle(String text) {
        TextView tv = new TextView(this);
        tv.setText(text);
        tv.setTextSize(13.0f);
        tv.setTextColor(COLOR_TEXT_SUB);
        tv.setGravity(1);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(-1, -2);
        params.setMargins(0, dp(4), 0, dp(16));
        tv.setLayoutParams(params);
        return tv;
    }

    private Button createLightButton(String text) {
        Button btn = new Button(this);
        btn.setText(text);
        btn.setTextSize(14.0f);
        btn.setAllCaps(false);
        btn.setTextColor(COLOR_BUTTON_TEXT);
        GradientDrawable bg = new GradientDrawable();
        bg.setShape(0);
        bg.setColor(COLOR_BUTTON_BG_LIGHT);
        bg.setCornerRadius(dp(24));
        btn.setBackground(bg);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(-1, -2);
        params.setMargins(0, dp(8), 0, dp(8));
        btn.setLayoutParams(params);
        return btn;
    }

    private Button createDarkButton(String text) {
        Button btn = new Button(this);
        btn.setText(text);
        btn.setTextSize(14.0f);
        btn.setAllCaps(false);
        btn.setTextColor(-1);
        GradientDrawable bg = new GradientDrawable();
        bg.setShape(0);
        bg.setColor(COLOR_PRIMARY_DARK);
        bg.setCornerRadius(dp(24));
        btn.setBackground(bg);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(-1, -2);
        params.setMargins(0, dp(8), 0, dp(8));
        btn.setLayoutParams(params);
        return btn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkForUpdate$9() {
        try {
            URL url = new URL("http://309096184.xyz/气泡自动化/气泡自动化.txt");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setUseCaches(false);
            conn.setConnectTimeout(5000);
            conn.setReadTimeout(5000);
            if (conn.getResponseCode() == 200) {
                BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String line = reader.readLine();
                    if (line == null) {
                        break;
                    } else {
                        sb.append(line);
                    }
                }
                reader.close();
                JSONObject json = new JSONObject(sb.toString());
                if (json.has("error")) {
                    final String error = json.optString("error");
                    runOnUiThread(new Runnable() { // from class: ansheng.qipao.MainActivity$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$checkForUpdate$7(error);
                        }
                    });
                    return;
                }
                String remoteVersion = json.getString("version");
                final boolean forceUpdate = json.optBoolean("forceUpdate", false);
                final String realUpdateUrl = json.optString("updateUrl", "#");
                final JSONArray changelogArray = json.getJSONArray("changelog");
                if (isVersionNewer(remoteVersion, "1.0.1")) {
                    runOnUiThread(new Runnable() { // from class: ansheng.qipao.MainActivity$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$checkForUpdate$8(forceUpdate, changelogArray, realUpdateUrl);
                        }
                    });
                }
            }
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkForUpdate$7(String error) {
        Toast.makeText(this, "提示：" + error, 1).show();
        lambda$checkForUpdate$8(true, new JSONArray().put("请前往葫芦侠三楼更新最新版本"), "#");
    }

    private boolean isVersionNewer(String remote, String local) {
        try {
            String[] rParts = remote.split("\\.");
            String[] lParts = local.split("\\.");
            int maxLen = Math.max(rParts.length, lParts.length);
            int i = 0;
            while (i < maxLen) {
                int r = i < rParts.length ? Integer.parseInt(rParts[i]) : 0;
                int l = i < lParts.length ? Integer.parseInt(lParts[i]) : 0;
                if (r != l) {
                    return r > l;
                }
                i++;
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:19:0x0121  */
    /* JADX WARN: Code duplicated, block: B:20:0x0137  */
    /* JADX WARN: Code duplicated, block: B:23:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:26:0x01ce  */
    /* JADX INFO: renamed from: showCustomUpdateDialog, reason: merged with bridge method [inline-methods] */
    public void lambda$checkForUpdate$8(final boolean forceUpdate, JSONArray changelogArray, final String updateUrl) {
        LinearLayout linearLayout;
        Button positiveBtn;
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        if (dialog.getWindow() != null) {
            dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        linearLayout2.setBackgroundColor(COLOR_WHITE);
        linearLayout2.setPadding(dp(24), dp(24), dp(24), dp(24));
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(COLOR_WHITE);
        bg.setCornerRadius(dp(24));
        linearLayout2.setBackground(bg);
        TextView titleView = new TextView(this);
        titleView.setText("发现新版本");
        titleView.setTextSize(22.0f);
        titleView.setTypeface(Typeface.DEFAULT_BOLD);
        titleView.setTextColor(COLOR_TEXT_MAIN);
        titleView.setGravity(17);
        titleView.setPadding(0, 0, 0, dp(20));
        linearLayout2.addView(titleView);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < changelogArray.length(); i++) {
            try {
                try {
                    sb.append(changelogArray.getString(i)).append("\n");
                } catch (Exception e) {
                    sb.append("请前往葫芦侠三楼更新最新版本");
                    TextView contentView = new TextView(this);
                    contentView.setText(sb.toString().trim());
                    contentView.setTextSize(15.0f);
                    contentView.setTextColor(COLOR_TEXT_SUB);
                    contentView.setGravity(17);
                    contentView.setLineSpacing(1.2f, 1.2f);
                    contentView.setPadding(0, 0, 0, dp(24));
                    linearLayout2.addView(contentView);
                    linearLayout = new LinearLayout(this);
                    linearLayout.setOrientation(0);
                    linearLayout.setGravity(17);
                    positiveBtn = new Button(this);
                    positiveBtn.setText("立即更新");
                    positiveBtn.setTextSize(14.0f);
                    positiveBtn.setAllCaps(false);
                    positiveBtn.setTextColor(-1);
                    GradientDrawable posBg = new GradientDrawable();
                    posBg.setColor(COLOR_PRIMARY_DARK);
                    posBg.setCornerRadius(dp(24));
                    positiveBtn.setBackground(posBg);
                    positiveBtn.setOnClickListener(new View.OnClickListener() { // from class: ansheng.qipao.MainActivity$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$showCustomUpdateDialog$10(updateUrl, forceUpdate, dialog, view);
                        }
                    });
                    if (forceUpdate) {
                        Button negativeBtn = new Button(this);
                        negativeBtn.setText("以后再说");
                        negativeBtn.setTextSize(14.0f);
                        negativeBtn.setAllCaps(false);
                        negativeBtn.setTextColor(COLOR_TEXT_SUB);
                        negativeBtn.setBackgroundColor(0);
                        GradientDrawable negBg = new GradientDrawable();
                        negBg.setColor(0);
                        negBg.setStroke(dp(1), Color.parseColor("#D0D0D0"));
                        negBg.setCornerRadius(dp(24));
                        negativeBtn.setBackground(negBg);
                        negativeBtn.setOnClickListener(new View.OnClickListener() { // from class: ansheng.qipao.MainActivity$$ExternalSyntheticLambda4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                dialog.dismiss();
                            }
                        });
                        LinearLayout.LayoutParams negParams = new LinearLayout.LayoutParams(-2, -2);
                        negParams.width = dp(100);
                        negParams.setMargins(0, 0, dp(16), 0);
                        negativeBtn.setLayoutParams(negParams);
                        LinearLayout.LayoutParams posParams = new LinearLayout.LayoutParams(-2, -2);
                        posParams.width = dp(100);
                        positiveBtn.setLayoutParams(posParams);
                        linearLayout.addView(negativeBtn);
                        linearLayout.addView(positiveBtn);
                    } else {
                        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(-2, -2);
                        params.width = dp(160);
                        positiveBtn.setLayoutParams(params);
                        linearLayout.addView(positiveBtn);
                    }
                    linearLayout2.addView(linearLayout);
                    dialog.setContentView(linearLayout2);
                    dialog.setCancelable(!forceUpdate);
                    dialog.setCanceledOnTouchOutside(false);
                    if (forceUpdate) {
                        dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: ansheng.qipao.MainActivity$$ExternalSyntheticLambda5
                            @Override // android.content.DialogInterface.OnKeyListener
                            public final boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                                return MainActivity.lambda$showCustomUpdateDialog$12(dialogInterface, i2, keyEvent);
                            }
                        });
                    }
                    if (dialog.getWindow() != null) {
                        WindowManager.LayoutParams lp = dialog.getWindow().getAttributes();
                        lp.width = (int) (((double) getResources().getDisplayMetrics().widthPixels) * 0.85d);
                        dialog.getWindow().setAttributes(lp);
                    }
                    dialog.show();
                }
            } catch (Exception e2) {
            }
        }
        TextView contentView2 = new TextView(this);
        contentView2.setText(sb.toString().trim());
        contentView2.setTextSize(15.0f);
        contentView2.setTextColor(COLOR_TEXT_SUB);
        contentView2.setGravity(17);
        contentView2.setLineSpacing(1.2f, 1.2f);
        contentView2.setPadding(0, 0, 0, dp(24));
        linearLayout2.addView(contentView2);
        linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        positiveBtn = new Button(this);
        positiveBtn.setText("立即更新");
        positiveBtn.setTextSize(14.0f);
        positiveBtn.setAllCaps(false);
        positiveBtn.setTextColor(-1);
        GradientDrawable posBg2 = new GradientDrawable();
        posBg2.setColor(COLOR_PRIMARY_DARK);
        posBg2.setCornerRadius(dp(24));
        positiveBtn.setBackground(posBg2);
        positiveBtn.setOnClickListener(new View.OnClickListener() { // from class: ansheng.qipao.MainActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showCustomUpdateDialog$10(updateUrl, forceUpdate, dialog, view);
            }
        });
        if (forceUpdate) {
            Button negativeBtn2 = new Button(this);
            negativeBtn2.setText("以后再说");
            negativeBtn2.setTextSize(14.0f);
            negativeBtn2.setAllCaps(false);
            negativeBtn2.setTextColor(COLOR_TEXT_SUB);
            negativeBtn2.setBackgroundColor(0);
            GradientDrawable negBg2 = new GradientDrawable();
            negBg2.setColor(0);
            negBg2.setStroke(dp(1), Color.parseColor("#D0D0D0"));
            negBg2.setCornerRadius(dp(24));
            negativeBtn2.setBackground(negBg2);
            negativeBtn2.setOnClickListener(new View.OnClickListener() { // from class: ansheng.qipao.MainActivity$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dialog.dismiss();
                }
            });
            LinearLayout.LayoutParams negParams2 = new LinearLayout.LayoutParams(-2, -2);
            negParams2.width = dp(100);
            negParams2.setMargins(0, 0, dp(16), 0);
            negativeBtn2.setLayoutParams(negParams2);
            LinearLayout.LayoutParams posParams2 = new LinearLayout.LayoutParams(-2, -2);
            posParams2.width = dp(100);
            positiveBtn.setLayoutParams(posParams2);
            linearLayout.addView(negativeBtn2);
            linearLayout.addView(positiveBtn);
        } else {
            LinearLayout.LayoutParams params2 = new LinearLayout.LayoutParams(-2, -2);
            params2.width = dp(160);
            positiveBtn.setLayoutParams(params2);
            linearLayout.addView(positiveBtn);
        }
        linearLayout2.addView(linearLayout);
        dialog.setContentView(linearLayout2);
        dialog.setCancelable(!forceUpdate);
        dialog.setCanceledOnTouchOutside(false);
        if (forceUpdate) {
            dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: ansheng.qipao.MainActivity$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnKeyListener
                public final boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                    return MainActivity.lambda$showCustomUpdateDialog$12(dialogInterface, i2, keyEvent);
                }
            });
        }
        if (dialog.getWindow() != null) {
            WindowManager.LayoutParams lp2 = dialog.getWindow().getAttributes();
            lp2.width = (int) (((double) getResources().getDisplayMetrics().widthPixels) * 0.85d);
            dialog.getWindow().setAttributes(lp2);
        }
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCustomUpdateDialog$10(String updateUrl, boolean forceUpdate, Dialog dialog, View v) {
        if (updateUrl == null || updateUrl.equals("#") || updateUrl.isEmpty()) {
            Toast.makeText(this, "请到葫芦侠三楼更新", 1).show();
        } else {
            try {
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse(updateUrl)));
            } catch (Exception e) {
                Toast.makeText(this, "无法打开链接，请到葫芦侠三楼更新", 1).show();
            }
        }
        if (!forceUpdate) {
            dialog.dismiss();
        }
    }

    static /* synthetic */ boolean lambda$showCustomUpdateDialog$12(DialogInterface dialogInterface, int keyCode, KeyEvent event) {
        return keyCode == 4;
    }

    private void requestNotificationPermission() {
        if (Build.VERSION.SDK_INT >= 33 && checkSelfPermission("android.permission.POST_NOTIFICATIONS") != 0) {
            requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 1002);
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1001) {
            if (Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(this)) {
                Toast.makeText(this, "悬浮窗权限已开启", 0).show();
            } else {
                Toast.makeText(this, "悬浮窗权限没有开启", 1).show();
            }
        }
    }

    private int dp(int value) {
        return (int) ((value * getResources().getDisplayMetrics().density) + 0.5f);
    }
}
