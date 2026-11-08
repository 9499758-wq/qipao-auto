package ansheng.qipao;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.GestureDescription;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class AutoAdService extends AccessibilityService {
    private static final long DEFAULT_COOLDOWN_MS = 5000;
    private static final long DEFAULT_STEP_DELAY_MS = 3000;
    private static final String SERVER_URL = "http://309096184.xyz/气泡自动化/气泡自动化.php?token=kF8dN2sP7bR9xQ4vG5jM1zW6cA3hT0yL";
    private static AutoAdService instance;
    public static boolean isRunning = false;
    private Handler handler = new Handler(Looper.getMainLooper());
    private int flowState = 0;
    private volatile long stepDelayMs = DEFAULT_STEP_DELAY_MS;
    private volatile long cooldownMs = DEFAULT_COOLDOWN_MS;
    private long lastActionTime = 0;
    private long lastClickMyTime = 0;
    private long lastClickClaimTime = 0;
    private long lastClickListenTime = 0;
    private long lastClickExitTime = 0;
    private long lastClickCloseTime = 0;
    private long lastClickCancelTime = 0;
    private long lastClickBackTime = 0;
    private volatile String TARGET_PACKAGE = "com.luna.music";
    private volatile String KEY_EXIT = "坚持退出";
    private volatile String KEY_LIVE = "直播";
    private volatile String KEY_CANCEL = "取消";
    private volatile String KEY_LISTEN = "畅听";
    private volatile String KEY_MY = "我的";
    private volatile String KEY_CLAIM = "继续领";
    private volatile String KEY_CLAIM2 = "继续领 >";
    private volatile String KEY_SUCCESS = "领取成功";
    private volatile String KEY_CLOSE_X = "×";
    private volatile String KEY_CLOSE_X2 = "X";
    private volatile boolean isConfigLoaded = true;
    private Runnable pollingRunnable = new Runnable() { // from class: ansheng.qipao.AutoAdService.1
        @Override // java.lang.Runnable
        public void run() {
            AccessibilityNodeInfo rootNode;
            try {
                if (AutoAdService.isRunning && AutoAdService.this.isConfigLoaded && (rootNode = AutoAdService.this.getRootInActiveWindow()) != null) {
                    AutoAdService.this.checkAndHandleAdFlow(rootNode);
                }
            } catch (Throwable th) {
                if (FloatWindowService.instance != null) {
                    FloatWindowService.instance.addLog("轮询异常");
                }
            }
            if (AutoAdService.isRunning) {
                AutoAdService.this.handler.postDelayed(this, 1000L);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAndHandleAdFlow(AccessibilityNodeInfo rootNode) {
        AccessibilityNodeInfo accessibilityNodeInfoFindNodeSmart;
        int iCenterX;
        int iCenterY;
        if (rootNode == null) {
            return;
        }
        String string = rootNode.getPackageName() != null ? rootNode.getPackageName().toString() : "";
        if (!this.TARGET_PACKAGE.equals(string) || string.equals(getPackageName())) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        AccessibilityNodeInfo accessibilityNodeInfoFindPersistExitBtn = findPersistExitBtn(rootNode);
        if (accessibilityNodeInfoFindPersistExitBtn != null) {
            if (jCurrentTimeMillis - this.lastClickExitTime > 1500) {
                Rect rect = new Rect();
                accessibilityNodeInfoFindPersistExitBtn.getBoundsInScreen(rect);
                int iCenterX2 = rect.centerX();
                int iCenterY2 = rect.centerY();
                if (iCenterX2 <= 0 || iCenterY2 <= 0) {
                    iCenterX2 = 586;
                    iCenterY2 = 1641;
                }
                this.flowState = 0;
                this.lastActionTime = jCurrentTimeMillis;
                this.lastClickExitTime = jCurrentTimeMillis;
                simulateClickAtPosition(iCenterX2, iCenterY2);
                FloatWindowService floatWindowService = FloatWindowService.instance;
                if (floatWindowService != null) {
                    floatWindowService.addLog("⛔ 识别到直播弹窗，点击 [坚持退出]");
                    return;
                }
                return;
            }
            return;
        }
        if (isInsideLiveRoom(rootNode) && !isAdPlaying(rootNode)) {
            if (jCurrentTimeMillis - this.lastClickBackTime > 2500) {
                this.lastActionTime = jCurrentTimeMillis;
                this.lastClickBackTime = jCurrentTimeMillis;
                this.flowState = 0;
                performGlobalAction(1);
                FloatWindowService floatWindowService2 = FloatWindowService.instance;
                if (floatWindowService2 != null) {
                    floatWindowService2.addLog("🚪 处于直播间且无倒数，触发系统返回退出");
                    return;
                }
                return;
            }
            return;
        }
        if (isAdPlaying(rootNode)) {
            this.flowState = 2;
            this.lastActionTime = jCurrentTimeMillis;
            if (jCurrentTimeMillis - this.lastClickExitTime > 4000) {
                this.lastClickExitTime = jCurrentTimeMillis;
                FloatWindowService floatWindowService3 = FloatWindowService.instance;
                if (floatWindowService3 != null) {
                    floatWindowService3.addLog("⏳ 广告正在倒数播放中，静默等待...");
                    return;
                }
                return;
            }
            return;
        }
        AccessibilityNodeInfo accessibilityNodeInfoFindRealClaimDialogBtn = findRealClaimDialogBtn(rootNode);
        if (accessibilityNodeInfoFindRealClaimDialogBtn != null) {
            Rect rect2 = new Rect();
            accessibilityNodeInfoFindRealClaimDialogBtn.getBoundsInScreen(rect2);
            iCenterX = rect2.centerX();
            iCenterY = rect2.centerY();
            if (iCenterX <= 0 || iCenterY > 0) {
            }
        } else {
            if (this.flowState != 3) {
                if ((this.flowState == 2 || isAdFinished(rootNode)) && (isAdFinished(rootNode) || jCurrentTimeMillis - this.lastClickClaimTime > 20000)) {
                    if (jCurrentTimeMillis - this.lastClickCloseTime > 2500) {
                        this.flowState = 3;
                        this.lastActionTime = jCurrentTimeMillis;
                        this.lastClickCloseTime = jCurrentTimeMillis;
                        int i = 975;
                        int i2 = 180;
                        AccessibilityNodeInfo accessibilityNodeInfoFindCloseBtnSmart = findCloseBtnSmart(rootNode);
                        if (accessibilityNodeInfoFindCloseBtnSmart != null) {
                            Rect rect3 = new Rect();
                            accessibilityNodeInfoFindCloseBtnSmart.getBoundsInScreen(rect3);
                            int iCenterX3 = rect3.centerX();
                            int iCenterY3 = rect3.centerY();
                            if (iCenterX3 > 0 && iCenterY3 > 0) {
                                i = iCenterX3;
                                i2 = iCenterY3;
                            }
                        }
                        simulateClickAtPosition(i, i2);
                        FloatWindowService floatWindowService4 = FloatWindowService.instance;
                        if (floatWindowService4 != null) {
                            floatWindowService4.addLog("✅ 广告已播完，物理轻触右上角 [✕] 关闭");
                            return;
                        }
                        return;
                    }
                    return;
                }
                AccessibilityNodeInfo accessibilityNodeInfoFindContinueSmart = findContinueSmart(rootNode);
                if (accessibilityNodeInfoFindContinueSmart != null) {
                    if (jCurrentTimeMillis - this.lastClickClaimTime > 2000) {
                        Rect rect4 = new Rect();
                        accessibilityNodeInfoFindContinueSmart.getBoundsInScreen(rect4);
                        int iCenterX4 = rect4.centerX();
                        int iCenterY4 = rect4.centerY();
                        if (iCenterX4 <= 0 || iCenterY4 <= 0) {
                            return;
                        }
                        this.flowState = 2;
                        this.lastActionTime = jCurrentTimeMillis;
                        this.lastClickClaimTime = jCurrentTimeMillis;
                        simulateClickAtPosition(iCenterX4, iCenterY4);
                        FloatWindowService floatWindowService5 = FloatWindowService.instance;
                        if (floatWindowService5 != null) {
                            floatWindowService5.addLog("👉 物理轻触 [继续领] 进入广告");
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (this.flowState == 0 && (accessibilityNodeInfoFindNodeSmart = findNodeSmart(rootNode, "我的")) != null) {
                    if (jCurrentTimeMillis - this.lastClickMyTime > DEFAULT_STEP_DELAY_MS) {
                        this.flowState = 1;
                        this.lastActionTime = jCurrentTimeMillis;
                        this.lastClickMyTime = jCurrentTimeMillis;
                        performAdvancedClick(accessibilityNodeInfoFindNodeSmart);
                        FloatWindowService floatWindowService6 = FloatWindowService.instance;
                        if (floatWindowService6 != null) {
                            floatWindowService6.addLog("📍 点击 [我的] 进入任务页");
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (this.flowState == 0 && jCurrentTimeMillis - this.lastClickBackTime > DEFAULT_COOLDOWN_MS && isMusicPlayerView(rootNode)) {
                    this.lastClickBackTime = jCurrentTimeMillis;
                    this.lastActionTime = jCurrentTimeMillis;
                    performGlobalAction(1);
                    FloatWindowService floatWindowService7 = FloatWindowService.instance;
                    if (floatWindowService7 != null) {
                        floatWindowService7.addLog("🎵 收起全屏音乐播放页，返回主面板");
                        return;
                    }
                    return;
                }
                return;
            }
            if (jCurrentTimeMillis - this.lastClickCloseTime <= 1000) {
                return;
            }
            iCenterX = 586;
            iCenterY = 1445;
        }
        if (jCurrentTimeMillis - this.lastClickClaimTime > 2000) {
            this.flowState = 2;
            this.lastActionTime = jCurrentTimeMillis;
            this.lastClickClaimTime = jCurrentTimeMillis;
            simulateClickAtPosition(iCenterX, iCenterY);
            FloatWindowService floatWindowService8 = FloatWindowService.instance;
            if (floatWindowService8 != null) {
                floatWindowService8.addLog("👉 点击弹窗 [领取奖励] 切换下一个广告");
            }
        }
    }

    private static AccessibilityNodeInfo findCloseBtnSmart(AccessibilityNodeInfo node) {
        AccessibilityNodeInfo accessibilityNodeInfoFindCloseBtnSmart;
        if (node == null) {
            return null;
        }
        CharSequence text = node.getText();
        if (text != null && isCloseBtnMatch(node, text.toString())) {
            return node;
        }
        CharSequence contentDescription = node.getContentDescription();
        if (contentDescription != null && isCloseBtnMatch(node, contentDescription.toString())) {
            return node;
        }
        int childCount = node.getChildCount();
        for (int i = 0; i < childCount; i++) {
            AccessibilityNodeInfo child = node.getChild(i);
            if (child != null && (accessibilityNodeInfoFindCloseBtnSmart = findCloseBtnSmart(child)) != null) {
                return accessibilityNodeInfoFindCloseBtnSmart;
            }
        }
        return null;
    }

    private static AccessibilityNodeInfo findContinueSmart(AccessibilityNodeInfo node) {
        AccessibilityNodeInfo accessibilityNodeInfoFindContinueSmart;
        if (node == null) {
            return null;
        }
        String viewIdResourceName = node.getViewIdResourceName();
        if (viewIdResourceName != null && viewIdResourceName.contains("id/gjd")) {
            return node;
        }
        CharSequence text = node.getText();
        if (text != null && text.toString().contains("继续领")) {
            return node;
        }
        CharSequence contentDescription = node.getContentDescription();
        if (contentDescription != null && contentDescription.toString().contains("继续领")) {
            return node;
        }
        int childCount = node.getChildCount();
        for (int i = 0; i < childCount; i++) {
            AccessibilityNodeInfo child = node.getChild(i);
            if (child != null && (accessibilityNodeInfoFindContinueSmart = findContinueSmart(child)) != null) {
                return accessibilityNodeInfoFindContinueSmart;
            }
        }
        return null;
    }

    private static AccessibilityNodeInfo findNodeSmart(AccessibilityNodeInfo node, String keyword) {
        AccessibilityNodeInfo accessibilityNodeInfoFindNodeSmart;
        if (node == null || keyword == null) {
            return null;
        }
        CharSequence text = node.getText();
        if (text != null && text.toString().contains(keyword)) {
            return node;
        }
        CharSequence contentDescription = node.getContentDescription();
        if (contentDescription != null && contentDescription.toString().contains(keyword)) {
            return node;
        }
        int childCount = node.getChildCount();
        for (int i = 0; i < childCount; i++) {
            AccessibilityNodeInfo child = node.getChild(i);
            if (child != null && (accessibilityNodeInfoFindNodeSmart = findNodeSmart(child, keyword)) != null) {
                return accessibilityNodeInfoFindNodeSmart;
            }
        }
        return null;
    }

    private static AccessibilityNodeInfo findPersistExitBtn(AccessibilityNodeInfo node) {
        AccessibilityNodeInfo accessibilityNodeInfoFindPersistExitBtn;
        if (node == null) {
            return null;
        }
        CharSequence text = node.getText();
        if (text != null && isPersistExitMatch(node, text.toString())) {
            return node;
        }
        CharSequence contentDescription = node.getContentDescription();
        if (contentDescription != null && isPersistExitMatch(node, contentDescription.toString())) {
            return node;
        }
        int childCount = node.getChildCount();
        for (int i = 0; i < childCount; i++) {
            AccessibilityNodeInfo child = node.getChild(i);
            if (child != null && (accessibilityNodeInfoFindPersistExitBtn = findPersistExitBtn(child)) != null) {
                return accessibilityNodeInfoFindPersistExitBtn;
            }
        }
        return null;
    }

    private static AccessibilityNodeInfo findRealClaimDialogBtn(AccessibilityNodeInfo node) {
        AccessibilityNodeInfo accessibilityNodeInfoFindRealClaimDialogBtn;
        if (node == null) {
            return null;
        }
        CharSequence text = node.getText();
        if (text != null && isRealClaimMatch(node, text.toString())) {
            return node;
        }
        CharSequence contentDescription = node.getContentDescription();
        if (contentDescription != null && isRealClaimMatch(node, contentDescription.toString())) {
            return node;
        }
        int childCount = node.getChildCount();
        for (int i = 0; i < childCount; i++) {
            AccessibilityNodeInfo child = node.getChild(i);
            if (child != null && (accessibilityNodeInfoFindRealClaimDialogBtn = findRealClaimDialogBtn(child)) != null) {
                return accessibilityNodeInfoFindRealClaimDialogBtn;
            }
        }
        return null;
    }

    private static boolean isAdFinished(AccessibilityNodeInfo node) {
        if (node == null) {
            return false;
        }
        return (findNodeSmart(node, "领取成功") == null && findNodeSmart(node, "已获得奖励") == null && findNodeSmart(node, "奖励已发放") == null) ? false : true;
    }

    private static boolean isAdPlaying(AccessibilityNodeInfo node) {
        if (node == null) {
            return false;
        }
        CharSequence text = node.getText();
        if (text != null) {
            String string = text.toString();
            if (string.contains("秒后") || string.contains("后可领") || string.contains("秒可领") || string.contains("视频将在") || string.contains("s后")) {
                return true;
            }
        }
        CharSequence contentDescription = node.getContentDescription();
        if (contentDescription != null) {
            String string2 = contentDescription.toString();
            if (string2.contains("秒后") || string2.contains("后可领") || string2.contains("秒可领") || string2.contains("s后")) {
                return true;
            }
        }
        int childCount = node.getChildCount();
        for (int i = 0; i < childCount; i++) {
            AccessibilityNodeInfo child = node.getChild(i);
            if (child != null && isAdPlaying(child)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r1v10, types: [boolean] */
    private static boolean isCloseBtnMatch(AccessibilityNodeInfo node, String text) {
        if (text == null || node == null) {
            return false;
        }
        if (!text.contains("✕") && !text.contains("×") && !text.contains("X") && !text.contains("关闭") && text.contains("跳过") <= 0) {
            return false;
        }
        Rect rect = new Rect();
        node.getBoundsInScreen(rect);
        return rect.top < 450 && rect.centerX() > 600;
    }

    private static boolean isInsideLiveRoom(AccessibilityNodeInfo node) {
        if (node == null) {
            return false;
        }
        CharSequence text = node.getText();
        if (text != null && isLiveTextMatch(text.toString())) {
            return true;
        }
        CharSequence contentDescription = node.getContentDescription();
        if (contentDescription != null && isLiveTextMatch(contentDescription.toString())) {
            return true;
        }
        int childCount = node.getChildCount();
        for (int i = 0; i < childCount; i++) {
            AccessibilityNodeInfo child = node.getChild(i);
            if (child != null && isInsideLiveRoom(child)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isLiveTextMatch(String text) {
        if (text == null) {
            return false;
        }
        return text.contains("直播间观看时长") || text.contains("进入直播间") || text.contains("正在直播") || text.contains("关注主播") || text.contains("说点什么") || text.contains("粉丝团") || text.contains("完成互动");
    }

    private static boolean isMusicPlayerView(AccessibilityNodeInfo node) {
        if (node == null) {
            return false;
        }
        CharSequence text = node.getText();
        if (text != null) {
            String string = text.toString();
            if (string.contains("音效") || string.contains("倍速") || string.contains("歌词")) {
                return true;
            }
        }
        CharSequence contentDescription = node.getContentDescription();
        if (contentDescription != null) {
            String string2 = contentDescription.toString();
            if (string2.contains("播放列表") || string2.contains("暂停")) {
                return true;
            }
        }
        int childCount = node.getChildCount();
        for (int i = 0; i < childCount; i++) {
            AccessibilityNodeInfo child = node.getChild(i);
            if (child != null && isMusicPlayerView(child)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isPersistExitMatch(AccessibilityNodeInfo node, String text) {
        if (text == null || node == null) {
            return false;
        }
        return text.contains("坚持退出") || text.contains("放弃福利") || text.contains("放弃奖励") || text.contains("残忍离开") || text.contains("退出直播") || text.contains("不想看了");
    }

    private static boolean isRealClaimMatch(AccessibilityNodeInfo node, String text) {
        if (text == null || node == null) {
            return false;
        }
        if ((!text.contains("领取奖励") && !text.contains("开心收下") && !text.contains("去领取")) || text.contains("秒") || text.contains("后")) {
            return false;
        }
        Rect rect = new Rect();
        node.getBoundsInScreen(rect);
        return rect.top > 800 && rect.centerY() > 0;
    }

    @Override // android.accessibilityservice.AccessibilityService
    public void onServiceConnected() {
        super.onServiceConnected();
        instance = this;
        isRunning = true;
        if (FloatWindowService.instance != null) {
            FloatWindowService.instance.addLog("无障碍连接成功，正在拉取配置...");
        }
        downloadConfig();
    }

    private void downloadConfig() {
        new Thread(new Runnable() { // from class: ansheng.qipao.AutoAdService$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$downloadConfig$0();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$downloadConfig$0() {
        try {
            URL url = new URL(SERVER_URL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setConnectTimeout(5000);
            conn.setReadTimeout(5000);
            int responseCode = conn.getResponseCode();
            if (responseCode == 200) {
                InputStream is = conn.getInputStream();
                BufferedReader reader = new BufferedReader(new InputStreamReader(is));
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String line = reader.readLine();
                    if (line == null) {
                        break;
                    } else {
                        sb.append(line);
                    }
                }
                JSONObject config = new JSONObject(sb.toString());
                if (config.has("error")) {
                    String err = config.optString("error");
                    if (FloatWindowService.instance != null) {
                        FloatWindowService.instance.addLog("❌ " + err);
                    }
                    stopSelf();
                    return;
                }
                this.TARGET_PACKAGE = config.optString("packageName", "");
                this.stepDelayMs = config.optLong("stepDelayMs", DEFAULT_STEP_DELAY_MS);
                this.cooldownMs = config.optLong("cooldownMs", DEFAULT_COOLDOWN_MS);
                this.KEY_EXIT = config.optString("exit", "");
                this.KEY_LIVE = config.optString("live", "");
                this.KEY_CANCEL = config.optString("cancel", "");
                this.KEY_LISTEN = config.optString("listen", "");
                this.KEY_MY = config.optString("my", "");
                this.KEY_CLAIM = config.optString("claim", "");
                this.KEY_CLAIM2 = config.optString("claim2", "");
                this.KEY_SUCCESS = config.optString("success", "");
                this.KEY_CLOSE_X = config.optString("closeX", "");
                this.KEY_CLOSE_X2 = config.optString("closeX2", "");
                this.isConfigLoaded = true;
                if (FloatWindowService.instance != null) {
                    FloatWindowService.instance.addLog("✅ 配置加载成功，目标APP：" + this.TARGET_PACKAGE);
                    FloatWindowService.instance.addLog("步骤缓冲：" + (this.stepDelayMs / 1000) + "秒，防连点：" + (this.cooldownMs / 1000) + "秒");
                }
                startPolling();
                return;
            }
            if (FloatWindowService.instance != null) {
                FloatWindowService.instance.addLog("❌ HTTP状态码: " + responseCode);
            }
        } catch (Exception e) {
            if (FloatWindowService.instance != null) {
                FloatWindowService.instance.addLog("❌ 配置异常: " + e.getMessage());
            }
        }
    }

    private void startPolling() {
        this.handler.post(this.pollingRunnable);
    }

    @Override // android.accessibilityservice.AccessibilityService
    public void onAccessibilityEvent(AccessibilityEvent event) {
        AccessibilityNodeInfo root;
        if (!isRunning || !this.isConfigLoaded || (root = getRootInActiveWindow()) == null) {
            return;
        }
        checkAndHandleAdFlow(root);
    }

    private boolean performAdvancedClick(AccessibilityNodeInfo node) {
        if (node == null) {
            return false;
        }
        try {
            if ((node.isClickable() || node.isCheckable()) && node.performAction(16)) {
                return true;
            }
            AccessibilityNodeInfo parent = node.getParent();
            if (parent != null && ((parent.isClickable() || parent.isCheckable()) && parent.performAction(16))) {
                return true;
            }
            Rect rect = new Rect();
            node.getBoundsInScreen(rect);
            float centerX = rect.centerX();
            float centerY = rect.centerY();
            if (centerX > 0.0f && centerY > 0.0f) {
                return simulateClickAtPosition((int) centerX, (int) centerY);
            }
        } catch (Exception e) {
        }
        return false;
    }

    private boolean simulateClickAtPosition(int x, int y) {
        if (Build.VERSION.SDK_INT >= 24) {
            Path path = new Path();
            path.moveTo(x, y);
            GestureDescription.Builder gestureBuilder = new GestureDescription.Builder();
            gestureBuilder.addStroke(new GestureDescription.StrokeDescription(path, 0L, 50L));
            dispatchGesture(gestureBuilder.build(), null, null);
            return true;
        }
        return false;
    }

    @Override // android.accessibilityservice.AccessibilityService
    public void onInterrupt() {
        isRunning = false;
        this.handler.removeCallbacks(this.pollingRunnable);
    }

    @Override // android.app.Service
    public void onDestroy() {
        isRunning = false;
        this.handler.removeCallbacks(this.pollingRunnable);
        instance = null;
        super.onDestroy();
    }
}
