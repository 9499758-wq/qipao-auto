package ansheng.qipao;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.provider.Settings;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class FloatWindowService extends Service {
    private static final String CHANNEL_ID = "qipao_float_service";
    private static final String KEY_LOG_HISTORY = "log_history";
    private static final int NOTIFICATION_ID = 1001;
    private static final String PREFS_NAME = "AppPrefs";
    public static FloatWindowService instance;
    private static boolean isServiceCreated = false;
    private View floatView;
    private LinearLayout logContainer;
    private ScrollView scrollView;
    private boolean viewAdded = false;
    private WindowManager windowManager;
    private WindowManager.LayoutParams windowParams;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (isServiceCreated) {
            stopSelf();
            return;
        }
        isServiceCreated = true;
        instance = this;
        try {
            createNotificationChannel();
            startForeground(1001, createNotification());
            this.windowManager = (WindowManager) getSystemService("window");
            createFloatView();
        } catch (Exception e) {
            Toast.makeText(this, "前台服务启动失败", 1).show();
            stopSelf();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        return 1;
    }

    private void createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel channel = new NotificationChannel(CHANNEL_ID, "气泡自动化悬浮窗", 2);
            channel.setShowBadge(false);
            NotificationManager manager = (NotificationManager) getSystemService("notification");
            if (manager != null) {
                manager.createNotificationChannel(channel);
            }
        }
    }

    private Notification createNotification() {
        Intent intent = new Intent(this, (Class<?>) MainActivity.class);
        int pendingFlags = Build.VERSION.SDK_INT >= 23 ? 134217728 | 67108864 : 134217728;
        PendingIntent pendingIntent = PendingIntent.getActivity(this, 0, intent, pendingFlags);
        Notification.Builder builder = Build.VERSION.SDK_INT >= 26 ? new Notification.Builder(this, CHANNEL_ID) : new Notification.Builder(this);
        builder.setSmallIcon(android.R.drawable.ic_dialog_info).setContentTitle("气泡自动化").setContentText("悬浮窗服务正在运行").setContentIntent(pendingIntent).setOngoing(true).setAutoCancel(false);
        return builder.build();
    }

    private void createFloatView() {
        if (Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(this)) {
            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setOrientation(1);
            linearLayout.setBackgroundColor(Color.parseColor("#80000000"));
            linearLayout.setPadding(dp(6), dp(6), dp(6), dp(6));
            LinearLayout titleRow = new LinearLayout(this);
            titleRow.setOrientation(0);
            titleRow.setGravity(16);
            TextView title = new TextView(this);
            title.setText("气泡助手 (何老师版)");
            title.setTextSize(14.0f);
            title.setTextColor(-1);
            title.setTypeface(Typeface.DEFAULT, 1);
            titleRow.addView(title, new LinearLayout.LayoutParams(0, -2, 1.0f));
            Switch runningSwitch = new Switch(this);
            runningSwitch.setText("运行");
            runningSwitch.setTextColor(-1);
            runningSwitch.setChecked(true);
            runningSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: ansheng.qipao.FloatWindowService$$ExternalSyntheticLambda2
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    this.f$0.lambda$createFloatView$0(compoundButton, z);
                }
            });
            titleRow.addView(runningSwitch);
            linearLayout.addView(titleRow);
            this.scrollView = new ScrollView(this);
            this.scrollView.setBackgroundColor(Color.parseColor("#55000000"));
            this.scrollView.setPadding(dp(4), dp(4), dp(4), dp(4));
            this.logContainer = new LinearLayout(this);
            this.logContainer.setOrientation(1);
            this.scrollView.addView(this.logContainer, new FrameLayout.LayoutParams(-1, -2));
            LinearLayout.LayoutParams logParams = new LinearLayout.LayoutParams(-1, dp(120));
            logParams.setMargins(0, dp(8), 0, dp(8));
            linearLayout.addView(this.scrollView, logParams);
            LinearLayout buttonRow = new LinearLayout(this);
            buttonRow.setOrientation(0);
            Button clearButton = new Button(this);
            clearButton.setText("清除日志");
            clearButton.setTextSize(12.0f);
            buttonRow.addView(clearButton, new LinearLayout.LayoutParams(0, -2, 1.0f));
            Button hideButton = new Button(this);
            hideButton.setText("隐藏");
            hideButton.setTextSize(12.0f);
            buttonRow.addView(hideButton, new LinearLayout.LayoutParams(0, -2, 1.0f));
            linearLayout.addView(buttonRow, new LinearLayout.LayoutParams(-1, -2));
            this.floatView = linearLayout;
            int windowType = Build.VERSION.SDK_INT >= 26 ? 2038 : 2002;
            this.windowParams = new WindowManager.LayoutParams(dp(208), -2, windowType, 8, -3);
            this.windowParams.gravity = 8388659;
            this.windowParams.x = dp(30);
            this.windowParams.y = dp(180);
            setDragListener(this.floatView);
            clearButton.setOnClickListener(new View.OnClickListener() { // from class: ansheng.qipao.FloatWindowService$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createFloatView$1(view);
                }
            });
            hideButton.setOnClickListener(new View.OnClickListener() { // from class: ansheng.qipao.FloatWindowService$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createFloatView$2(view);
                }
            });
            try {
                this.windowManager.addView(this.floatView, this.windowParams);
                this.viewAdded = true;
                return;
            } catch (Exception e) {
                Toast.makeText(this, "悬浮窗创建失败", 1).show();
                stopSelf();
                return;
            }
        }
        Toast.makeText(this, "请先开启悬浮窗权限", 1).show();
        stopSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createFloatView$0(CompoundButton buttonView, boolean checked) {
        AutoAdService.isRunning = checked;
        if (!checked) {
            addLog("运行已暂停");
        } else {
            addLog("运行已恢复");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createFloatView$1(View v) {
        clearLogs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createFloatView$2(View v) {
        AutoAdService.isRunning = false;
        stopSelf();
    }

    private void setDragListener(View view) {
        view.setOnTouchListener(new View.OnTouchListener() { // from class: ansheng.qipao.FloatWindowService.1
            private float initialTouchX;
            private float initialTouchY;
            private int initialX;
            private int initialY;
            private boolean moved;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getAction()) {
                    case 0:
                        this.initialX = FloatWindowService.this.windowParams.x;
                        this.initialY = FloatWindowService.this.windowParams.y;
                        this.initialTouchX = event.getRawX();
                        this.initialTouchY = event.getRawY();
                        this.moved = false;
                        return false;
                    case 1:
                        return this.moved;
                    case 2:
                        float dx = event.getRawX() - this.initialTouchX;
                        float dy = event.getRawY() - this.initialTouchY;
                        if (Math.abs(dx) > FloatWindowService.this.dp(5) || Math.abs(dy) > FloatWindowService.this.dp(5)) {
                            this.moved = true;
                            FloatWindowService.this.windowParams.x = this.initialX + ((int) dx);
                            FloatWindowService.this.windowParams.y = this.initialY + ((int) dy);
                            try {
                                if (FloatWindowService.this.viewAdded) {
                                    FloatWindowService.this.windowManager.updateViewLayout(FloatWindowService.this.floatView, FloatWindowService.this.windowParams);
                                }
                                break;
                            } catch (Exception e) {
                            }
                        }
                        return false;
                    default:
                        return false;
                }
            }
        });
    }

    public void addLog(String message) {
        final String convertedMessage = convertLogText(message);
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: ansheng.qipao.FloatWindowService$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addLog$4(convertedMessage);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addLog$4(String convertedMessage) {
        if (this.logContainer == null) {
            return;
        }
        String time = new SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(new Date());
        String line = "[" + time + "] " + convertedMessage;
        TextView lineView = new TextView(this);
        lineView.setText(line);
        lineView.setTextColor(-1);
        lineView.setTextSize(11.0f);
        lineView.setSingleLine(false);
        lineView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.logContainer.addView(lineView);
        if (this.logContainer.getChildCount() > 100) {
            this.logContainer.removeViewAt(0);
        }
        if (this.scrollView != null) {
            this.scrollView.post(new Runnable() { // from class: ansheng.qipao.FloatWindowService$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$addLog$3();
                }
            });
        }
        SharedPreferences prefs = getSharedPreferences(PREFS_NAME, 0);
        String existing = prefs.getString(KEY_LOG_HISTORY, "");
        String newHistory = existing + line + "\n";
        if (newHistory.length() > 50000) {
            newHistory = newHistory.substring(newHistory.length() - 50000);
        }
        prefs.edit().putString(KEY_LOG_HISTORY, newHistory).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addLog$3() {
        ScrollView scrollView = this.scrollView;
        if (scrollView != null) {
            scrollView.fullScroll(130);
        }
    }

    private String convertLogText(String original) {
        if (original == null) {
            return "";
        }
        String result = original.replace("直接看广告", "继续操作");
        return result.replace("点击关闭广告", "执行关闭操作").replace("找不到X，用返回键", "未检测到关闭标识，执行返回").replace("物理命中", "执行").replace("触发返回", "执行返回").replace("强制关闭", "已处理").replace("已强制关闭", "已处理").replace("准备关闭", "准备继续").replace("关闭广告", "关闭操作").replace("看广告", "执行操作").replace("点击", "执行").replace("发现", "检测到").replace("截获", "检测到").replace("返回键", "返回操作").replace("套娃", "额外步骤").replace("坚持退出", "退出选项").replace("继续领 >", "领取选项").replace("继续领", "领取选项").replace("畅听", "功能选项").replace("直播", "特定界面").replace("取消", "取消操作").replace("领取成功", "成功状态").replace("×", "关闭标识").replace("X", "关闭标识").replace("我的", "个人页面");
    }

    public void clearLogs() {
        if (this.logContainer != null) {
            this.logContainer.removeAllViews();
        }
        getSharedPreferences(PREFS_NAME, 0).edit().putString(KEY_LOG_HISTORY, "").apply();
        addLog("日志已清除");
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (this.floatView != null && this.windowManager != null && this.viewAdded) {
            try {
                this.windowManager.removeView(this.floatView);
            } catch (Exception e) {
            }
        }
        this.viewAdded = false;
        this.floatView = null;
        this.logContainer = null;
        this.scrollView = null;
        instance = null;
        isServiceCreated = false;
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int dp(int value) {
        return (int) ((value * getResources().getDisplayMetrics().density) + 0.5f);
    }
}
