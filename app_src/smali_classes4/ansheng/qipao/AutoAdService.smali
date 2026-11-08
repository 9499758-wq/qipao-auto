.class public Lansheng/qipao/AutoAdService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "AutoAdService.java"


# static fields
.field private static final DEFAULT_COOLDOWN_MS:J = 0x1388L

.field private static final DEFAULT_STEP_DELAY_MS:J = 0xbb8L

.field private static final SERVER_URL:Ljava/lang/String; = "http://309096184.xyz/\u6c14\u6ce1\u81ea\u52a8\u5316/\u6c14\u6ce1\u81ea\u52a8\u5316.php?token=kF8dN2sP7bR9xQ4vG5jM1zW6cA3hT0yL"

.field private static instance:Lansheng/qipao/AutoAdService;

.field public static isRunning:Z


# instance fields
.field private volatile KEY_CANCEL:Ljava/lang/String;

.field private volatile KEY_CLAIM:Ljava/lang/String;

.field private volatile KEY_CLAIM2:Ljava/lang/String;

.field private volatile KEY_CLOSE_X:Ljava/lang/String;

.field private volatile KEY_CLOSE_X2:Ljava/lang/String;

.field private volatile KEY_EXIT:Ljava/lang/String;

.field private volatile KEY_LISTEN:Ljava/lang/String;

.field private volatile KEY_LIVE:Ljava/lang/String;

.field private volatile KEY_MY:Ljava/lang/String;

.field private volatile KEY_SUCCESS:Ljava/lang/String;

.field private volatile TARGET_PACKAGE:Ljava/lang/String;

.field private volatile cooldownMs:J

.field private flowState:I

.field private handler:Landroid/os/Handler;

.field private volatile isConfigLoaded:Z

.field private lastActionTime:J

.field private lastClickBackTime:J

.field private lastClickCancelTime:J

.field private lastClickClaimTime:J

.field private lastClickCloseTime:J

.field private lastClickExitTime:J

.field private lastClickListenTime:J

.field private lastClickMyTime:J

.field private pollingRunnable:Ljava/lang/Runnable;

.field private volatile stepDelayMs:J


# direct methods
.method public static synthetic $r8$lambda$NquXI2nV2w_jU5gPl87t-4fx9Z8(Lansheng/qipao/AutoAdService;)V
    .locals 0

    invoke-direct {p0}, Lansheng/qipao/AutoAdService;->lambda$downloadConfig$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lansheng/qipao/AutoAdService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lansheng/qipao/AutoAdService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisConfigLoaded(Lansheng/qipao/AutoAdService;)Z
    .locals 0

    iget-boolean p0, p0, Lansheng/qipao/AutoAdService;->isConfigLoaded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckAndHandleAdFlow(Lansheng/qipao/AutoAdService;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lansheng/qipao/AutoAdService;->checkAndHandleAdFlow(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lansheng/qipao/AutoAdService;->isRunning:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lansheng/qipao/AutoAdService;->handler:Landroid/os/Handler;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lansheng/qipao/AutoAdService;->flowState:I

    .line 34
    const-wide/16 v1, 0xbb8

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->stepDelayMs:J

    .line 35
    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->cooldownMs:J

    .line 38
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastActionTime:J

    .line 41
    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastClickMyTime:J

    .line 42
    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastClickClaimTime:J

    .line 43
    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastClickListenTime:J

    .line 44
    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastClickExitTime:J

    .line 45
    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastClickCloseTime:J

    .line 46
    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastClickCancelTime:J

    .line 47
    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastClickBackTime:J

    .line 52
    const-string v1, "com.luna.music"

    iput-object v1, p0, Lansheng/qipao/AutoAdService;->TARGET_PACKAGE:Ljava/lang/String;

    const-string v1, "\u575a\u6301\u9000\u51fa"

    iput-object v1, p0, Lansheng/qipao/AutoAdService;->KEY_EXIT:Ljava/lang/String;

    const-string v1, "\u76f4\u64ad"

    iput-object v1, p0, Lansheng/qipao/AutoAdService;->KEY_LIVE:Ljava/lang/String;

    const-string v1, "\u53d6\u6d88"

    iput-object v1, p0, Lansheng/qipao/AutoAdService;->KEY_CANCEL:Ljava/lang/String;

    const-string v1, "\u7545\u542c"

    iput-object v1, p0, Lansheng/qipao/AutoAdService;->KEY_LISTEN:Ljava/lang/String;

    const-string v1, "\u6211\u7684"

    iput-object v1, p0, Lansheng/qipao/AutoAdService;->KEY_MY:Ljava/lang/String;

    const-string v1, "\u7ee7\u7eed\u9886"

    iput-object v1, p0, Lansheng/qipao/AutoAdService;->KEY_CLAIM:Ljava/lang/String;

    const-string v1, "\u7ee7\u7eed\u9886 >"

    iput-object v1, p0, Lansheng/qipao/AutoAdService;->KEY_CLAIM2:Ljava/lang/String;

    const-string v1, "\u9886\u53d6\u6210\u529f"

    iput-object v1, p0, Lansheng/qipao/AutoAdService;->KEY_SUCCESS:Ljava/lang/String;

    const-string v1, "\u00d7"

    iput-object v1, p0, Lansheng/qipao/AutoAdService;->KEY_CLOSE_X:Ljava/lang/String;

    const-string v1, "X"

    iput-object v1, p0, Lansheng/qipao/AutoAdService;->KEY_CLOSE_X2:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lansheng/qipao/AutoAdService;->isConfigLoaded:Z

    .line 136
    new-instance v0, Lansheng/qipao/AutoAdService$1;

    invoke-direct {v0, p0}, Lansheng/qipao/AutoAdService$1;-><init>(Lansheng/qipao/AutoAdService;)V

    iput-object v0, p0, Lansheng/qipao/AutoAdService;->pollingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private checkAndHandleAdFlow(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 14
    .param p1, "rootNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lansheng/qipao/AutoAdService;->TARGET_PACKAGE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lansheng/qipao/AutoAdService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1}, Lansheng/qipao/AutoAdService;->findPersistExitBtn(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-wide v3, p0, Lansheng/qipao/AutoAdService;->lastClickExitTime:J

    sub-long v5, v1, v3

    const-wide/16 v3, 0x5dc

    cmp-long v8, v5, v3

    if-lez v8, :cond_5

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    if-lez v4, :cond_3

    if-gtz v3, :cond_4

    :cond_3
    const/16 v4, 0x24a

    const/16 v3, 0x669

    :cond_4
    const/4 v8, 0x0

    iput v8, p0, Lansheng/qipao/AutoAdService;->flowState:I

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastActionTime:J

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastClickExitTime:J

    invoke-direct {p0, v4, v3}, Lansheng/qipao/AutoAdService;->simulateClickAtPosition(II)Z

    sget-object v3, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    if-eqz v3, :cond_5

    const-string v4, "\u26d4 \u8bc6\u522b\u5230\u76f4\u64ad\u5f39\u7a97\uff0c\u70b9\u51fb [\u575a\u6301\u9000\u51fa]"

    invoke-virtual {v3, v4}, Lansheng/qipao/FloatWindowService;->addLog(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    invoke-static {p1}, Lansheng/qipao/AutoAdService;->isInsideLiveRoom(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {p1}, Lansheng/qipao/AutoAdService;->isAdPlaying(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    :cond_7
    iget-wide v3, p0, Lansheng/qipao/AutoAdService;->lastClickBackTime:J

    sub-long v5, v1, v3

    const-wide/16 v3, 0x9c4

    cmp-long v8, v5, v3

    if-lez v8, :cond_8

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastActionTime:J

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastClickBackTime:J

    const/4 v8, 0x0

    iput v8, p0, Lansheng/qipao/AutoAdService;->flowState:I

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lansheng/qipao/AutoAdService;->performGlobalAction(I)Z

    sget-object v3, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    if-eqz v3, :cond_8

    const-string v4, "\ud83d\udeaa \u5904\u4e8e\u76f4\u64ad\u95f4\u4e14\u65e0\u5012\u6570\uff0c\u89e6\u53d1\u7cfb\u7edf\u8fd4\u56de\u9000\u51fa"

    invoke-virtual {v3, v4}, Lansheng/qipao/FloatWindowService;->addLog(Ljava/lang/String;)V

    :cond_8
    return-void

    :cond_9
    :goto_1
    invoke-static {p1}, Lansheng/qipao/AutoAdService;->isAdPlaying(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v8, 0x2

    iput v8, p0, Lansheng/qipao/AutoAdService;->flowState:I

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastActionTime:J

    iget-wide v3, p0, Lansheng/qipao/AutoAdService;->lastClickExitTime:J

    sub-long v5, v1, v3

    const-wide/16 v3, 0xfa0

    cmp-long v8, v5, v3

    if-lez v8, :cond_a

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastClickExitTime:J

    sget-object v3, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    if-eqz v3, :cond_a

    const-string v4, "\u23f3 \u5e7f\u544a\u6b63\u5728\u5012\u6570\u64ad\u653e\u4e2d\uff0c\u9759\u9ed8\u7b49\u5f85..."

    invoke-virtual {v3, v4}, Lansheng/qipao/FloatWindowService;->addLog(Ljava/lang/String;)V

    :cond_a
    return-void

    :cond_b
    invoke-static {p1}, Lansheng/qipao/AutoAdService;->findRealClaimDialogBtn(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    if-eqz v7, :cond_c

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    if-lez v4, :cond_d

    if-lez v3, :cond_d

    goto :goto_2

    :cond_c
    iget v8, p0, Lansheng/qipao/AutoAdService;->flowState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_f

    iget-wide v3, p0, Lansheng/qipao/AutoAdService;->lastClickCloseTime:J

    sub-long v5, v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v8, v5, v3

    if-lez v8, :cond_e

    const/16 v4, 0x24a

    const/16 v3, 0x5a5

    :cond_d
    :goto_2
    iget-wide v7, p0, Lansheng/qipao/AutoAdService;->lastClickClaimTime:J

    sub-long v5, v1, v7

    const-wide/16 v7, 0x7d0

    cmp-long v9, v5, v7

    if-lez v9, :cond_e

    const/4 v8, 0x2

    iput v8, p0, Lansheng/qipao/AutoAdService;->flowState:I

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastActionTime:J

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastClickClaimTime:J

    invoke-direct {p0, v4, v3}, Lansheng/qipao/AutoAdService;->simulateClickAtPosition(II)Z

    sget-object v3, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    if-eqz v3, :cond_e

    const-string v4, "\ud83d\udc49 \u70b9\u51fb\u5f39\u7a97 [\u9886\u53d6\u5956\u52b1] \u5207\u6362\u4e0b\u4e00\u4e2a\u5e7f\u544a"

    invoke-virtual {v3, v4}, Lansheng/qipao/FloatWindowService;->addLog(Ljava/lang/String;)V

    :cond_e
    return-void

    :cond_f
    iget v8, p0, Lansheng/qipao/AutoAdService;->flowState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_10

    invoke-static {p1}, Lansheng/qipao/AutoAdService;->isAdFinished(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v7

    if-nez v7, :cond_10

    goto :goto_3

    :cond_10
    invoke-static {p1}, Lansheng/qipao/AutoAdService;->isAdFinished(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v7

    if-nez v7, :cond_11

    iget-wide v3, p0, Lansheng/qipao/AutoAdService;->lastClickClaimTime:J

    sub-long v5, v1, v3

    const-wide/16 v3, 0x4e20

    cmp-long v8, v5, v3

    if-lez v8, :cond_14

    :cond_11
    iget-wide v3, p0, Lansheng/qipao/AutoAdService;->lastClickCloseTime:J

    sub-long v5, v1, v3

    const-wide/16 v3, 0x9c4

    cmp-long v8, v5, v3

    if-lez v8, :cond_13

    const/4 v8, 0x3

    iput v8, p0, Lansheng/qipao/AutoAdService;->flowState:I

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastActionTime:J

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastClickCloseTime:J

    const/16 v4, 0x3cf

    const/16 v3, 0xb4

    invoke-static {p1}, Lansheng/qipao/AutoAdService;->findCloseBtnSmart(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    if-eqz v7, :cond_12

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    if-lez v9, :cond_12

    if-lez v8, :cond_12

    move v4, v9

    move v3, v8

    :cond_12
    invoke-direct {p0, v4, v3}, Lansheng/qipao/AutoAdService;->simulateClickAtPosition(II)Z

    sget-object v3, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    if-eqz v3, :cond_13

    const-string v4, "\u2705 \u5e7f\u544a\u5df2\u64ad\u5b8c\uff0c\u7269\u7406\u8f7b\u89e6\u53f3\u4e0a\u89d2 [\u2715] \u5173\u95ed"

    invoke-virtual {v3, v4}, Lansheng/qipao/FloatWindowService;->addLog(Ljava/lang/String;)V

    :cond_13
    return-void

    :cond_14
    :goto_3
    invoke-static {p1}, Lansheng/qipao/AutoAdService;->findContinueSmart(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    if-eqz v7, :cond_16

    iget-wide v3, p0, Lansheng/qipao/AutoAdService;->lastClickClaimTime:J

    sub-long v5, v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v8, v5, v3

    if-lez v8, :cond_15

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    if-lez v4, :cond_15

    if-lez v3, :cond_15

    const/4 v8, 0x2

    iput v8, p0, Lansheng/qipao/AutoAdService;->flowState:I

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastActionTime:J

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastClickClaimTime:J

    invoke-direct {p0, v4, v3}, Lansheng/qipao/AutoAdService;->simulateClickAtPosition(II)Z

    sget-object v3, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    if-eqz v3, :cond_15

    const-string v4, "\ud83d\udc49 \u7269\u7406\u8f7b\u89e6 [\u7ee7\u7eed\u9886] \u8fdb\u5165\u5e7f\u544a"

    invoke-virtual {v3, v4}, Lansheng/qipao/FloatWindowService;->addLog(Ljava/lang/String;)V

    :cond_15
    return-void

    :cond_16
    iget v7, p0, Lansheng/qipao/AutoAdService;->flowState:I

    if-nez v7, :cond_17

    const-string v7, "\u6211\u7684"

    invoke-static {p1, v7}, Lansheng/qipao/AutoAdService;->findNodeSmart(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    if-eqz v7, :cond_17

    iget-wide v3, p0, Lansheng/qipao/AutoAdService;->lastClickMyTime:J

    sub-long v5, v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v8, v5, v3

    if-lez v8, :cond_18

    const/4 v8, 0x1

    iput v8, p0, Lansheng/qipao/AutoAdService;->flowState:I

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastActionTime:J

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastClickMyTime:J

    invoke-direct {p0, v7}, Lansheng/qipao/AutoAdService;->performAdvancedClick(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    sget-object v3, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    if-eqz v3, :cond_18

    const-string v4, "\ud83d\udccd \u70b9\u51fb [\u6211\u7684] \u8fdb\u5165\u4efb\u52a1\u9875"

    invoke-virtual {v3, v4}, Lansheng/qipao/FloatWindowService;->addLog(Ljava/lang/String;)V

    return-void

    :cond_17
    iget v7, p0, Lansheng/qipao/AutoAdService;->flowState:I

    if-nez v7, :cond_18

    iget-wide v3, p0, Lansheng/qipao/AutoAdService;->lastClickBackTime:J

    sub-long v5, v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v8, v5, v3

    if-lez v8, :cond_18

    invoke-static {p1}, Lansheng/qipao/AutoAdService;->isMusicPlayerView(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v7

    if-eqz v7, :cond_18

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastClickBackTime:J

    iput-wide v1, p0, Lansheng/qipao/AutoAdService;->lastActionTime:J

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lansheng/qipao/AutoAdService;->performGlobalAction(I)Z

    sget-object v3, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    if-eqz v3, :cond_18

    const-string v4, "\ud83c\udfb5 \u6536\u8d77\u5168\u5c4f\u97f3\u4e50\u64ad\u653e\u9875\uff0c\u8fd4\u56de\u4e3b\u9762\u677f"

    invoke-virtual {v3, v4}, Lansheng/qipao/FloatWindowService;->addLog(Ljava/lang/String;)V

    :cond_18
    :goto_4
    return-void
.end method

.method private downloadConfig()V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lansheng/qipao/AutoAdService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lansheng/qipao/AutoAdService$$ExternalSyntheticLambda0;-><init>(Lansheng/qipao/AutoAdService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 130
    return-void
.end method

.method private static findCloseBtnSmart(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lansheng/qipao/AutoAdService;->isCloseBtnMatch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lansheng/qipao/AutoAdService;->isCloseBtnMatch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Lansheng/qipao/AutoAdService;->findCloseBtnSmart(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static findContinueSmart(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "id/gjd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7ee7\u7eed\u9886"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7ee7\u7eed\u9886"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3}, Lansheng/qipao/AutoAdService;->findContinueSmart(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    return-object v4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static findNodeSmart(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "keyword"    # Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3, p1}, Lansheng/qipao/AutoAdService;->findNodeSmart(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static findPersistExitBtn(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lansheng/qipao/AutoAdService;->isPersistExitMatch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lansheng/qipao/AutoAdService;->isPersistExitMatch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Lansheng/qipao/AutoAdService;->findPersistExitBtn(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static findRealClaimDialogBtn(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lansheng/qipao/AutoAdService;->isRealClaimMatch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lansheng/qipao/AutoAdService;->isRealClaimMatch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Lansheng/qipao/AutoAdService;->findRealClaimDialogBtn(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static isAdFinished(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "\u9886\u53d6\u6210\u529f"

    invoke-static {p0, v1}, Lansheng/qipao/AutoAdService;->findNodeSmart(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v1, "\u5df2\u83b7\u5f97\u5956\u52b1"

    invoke-static {p0, v1}, Lansheng/qipao/AutoAdService;->findNodeSmart(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const-string v1, "\u5956\u52b1\u5df2\u53d1\u653e"

    invoke-static {p0, v1}, Lansheng/qipao/AutoAdService;->findNodeSmart(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private static isAdPlaying(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 5
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u79d2\u540e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v2, "\u540e\u53ef\u9886"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const-string v2, "\u79d2\u53ef\u9886"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const-string v2, "\u89c6\u9891\u5c06\u5728"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    const-string v2, "s\u540e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x1

    return v0

    :cond_5
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u79d2\u540e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const-string v2, "\u540e\u53ef\u9886"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const-string v2, "\u79d2\u53ef\u9886"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const-string v2, "s\u540e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_b

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-static {v3}, Lansheng/qipao/AutoAdService;->isAdPlaying(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_b
    return v0
.end method

.method private static isCloseBtnMatch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    .locals 4
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "text"    # Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "\u2715"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u00d7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "X"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u5173\u95ed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u8df3\u8fc7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-lez v1, :cond_2

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->top:I

    const/16 v3, 0x1c2

    if-ge v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    const/16 v3, 0x258

    if-le v2, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static isInsideLiveRoom(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 5
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lansheng/qipao/AutoAdService;->isLiveTextMatch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lansheng/qipao/AutoAdService;->isLiveTextMatch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Lansheng/qipao/AutoAdService;->isInsideLiveRoom(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private static isLiveTextMatch(Ljava/lang/String;)Z
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "\u76f4\u64ad\u95f4\u89c2\u770b\u65f6\u957f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u8fdb\u5165\u76f4\u64ad\u95f4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u6b63\u5728\u76f4\u64ad"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u5173\u6ce8\u4e3b\u64ad"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u8bf4\u70b9\u4ec0\u4e48"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u7c89\u4e1d\u56e2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u5b8c\u6210\u4e92\u52a8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static isMusicPlayerView(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 5
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u97f3\u6548"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\u500d\u901f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\u6b4c\u8bcd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u64ad\u653e\u5217\u8868"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "\u6682\u505c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v3}, Lansheng/qipao/AutoAdService;->isMusicPlayerView(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x1

    return v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method private static isPersistExitMatch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    .locals 3
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "text"    # Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "\u575a\u6301\u9000\u51fa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u653e\u5f03\u798f\u5229"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u653e\u5f03\u5956\u52b1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u6b8b\u5fcd\u79bb\u5f00"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u9000\u51fa\u76f4\u64ad"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u4e0d\u60f3\u770b\u4e86"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static isRealClaimMatch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    .locals 4
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "text"    # Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "\u9886\u53d6\u5956\u52b1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u5f00\u5fc3\u6536\u4e0b"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u53bb\u9886\u53d6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string v1, "\u79d2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\u540e"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->top:I

    const/16 v3, 0x320

    if-le v2, v3, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private synthetic lambda$downloadConfig$0()V
    .locals 14

    .line 79
    const-string v0, "error"

    const-string v1, ""

    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "http://309096184.xyz/\u6c14\u6ce1\u81ea\u52a8\u5316/\u6c14\u6ce1\u81ea\u52a8\u5316.php?token=kF8dN2sP7bR9xQ4vG5jM1zW6cA3hT0yL"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 81
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 82
    const/16 v4, 0x1388

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 83
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 85
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 86
    .local v4, "responseCode":I
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_4

    .line 87
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 88
    .local v5, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 89
    .local v6, "reader":Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v7, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "line":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 92
    :cond_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    .local v8, "config":Lorg/json/JSONObject;
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 96
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "err":Ljava/lang/String;
    sget-object v1, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    if-eqz v1, :cond_1

    sget-object v1, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u274c "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lansheng/qipao/FloatWindowService;->addLog(Ljava/lang/String;)V

    .line 98
    :cond_1
    invoke-virtual {p0}, Lansheng/qipao/AutoAdService;->stopSelf()V

    .line 99
    return-void

    .line 102
    .end local v0    # "err":Ljava/lang/String;
    :cond_2
    const-string v0, "packageName"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lansheng/qipao/AutoAdService;->TARGET_PACKAGE:Ljava/lang/String;

    .line 103
    const-string v0, "stepDelayMs"

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v0, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lansheng/qipao/AutoAdService;->stepDelayMs:J

    .line 104
    const-string v0, "cooldownMs"

    const-wide/16 v10, 0x1388

    invoke-virtual {v8, v0, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lansheng/qipao/AutoAdService;->cooldownMs:J

    .line 106
    const-string v0, "exit"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lansheng/qipao/AutoAdService;->KEY_EXIT:Ljava/lang/String;

    .line 107
    const-string v0, "live"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lansheng/qipao/AutoAdService;->KEY_LIVE:Ljava/lang/String;

    .line 108
    const-string v0, "cancel"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lansheng/qipao/AutoAdService;->KEY_CANCEL:Ljava/lang/String;

    .line 109
    const-string v0, "listen"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lansheng/qipao/AutoAdService;->KEY_LISTEN:Ljava/lang/String;

    .line 110
    const-string v0, "my"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lansheng/qipao/AutoAdService;->KEY_MY:Ljava/lang/String;

    .line 111
    const-string v0, "claim"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lansheng/qipao/AutoAdService;->KEY_CLAIM:Ljava/lang/String;

    .line 112
    const-string v0, "claim2"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lansheng/qipao/AutoAdService;->KEY_CLAIM2:Ljava/lang/String;

    .line 113
    const-string v0, "success"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lansheng/qipao/AutoAdService;->KEY_SUCCESS:Ljava/lang/String;

    .line 114
    const-string v0, "closeX"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lansheng/qipao/AutoAdService;->KEY_CLOSE_X:Ljava/lang/String;

    .line 115
    const-string v0, "closeX2"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lansheng/qipao/AutoAdService;->KEY_CLOSE_X2:Ljava/lang/String;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lansheng/qipao/AutoAdService;->isConfigLoaded:Z

    .line 118
    sget-object v0, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    if-eqz v0, :cond_3

    .line 119
    sget-object v0, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u2705 \u914d\u7f6e\u52a0\u8f7d\u6210\u529f\uff0c\u76ee\u6807APP\uff1a"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, p0, Lansheng/qipao/AutoAdService;->TARGET_PACKAGE:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lansheng/qipao/FloatWindowService;->addLog(Ljava/lang/String;)V

    .line 120
    sget-object v0, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u6b65\u9aa4\u7f13\u51b2\uff1a"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v10, p0, Lansheng/qipao/AutoAdService;->stepDelayMs:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "\u79d2\uff0c\u9632\u8fde\u70b9\uff1a"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v10, p0, Lansheng/qipao/AutoAdService;->cooldownMs:J

    div-long/2addr v10, v12

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "\u79d2"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lansheng/qipao/FloatWindowService;->addLog(Ljava/lang/String;)V

    .line 122
    :cond_3
    invoke-direct {p0}, Lansheng/qipao/AutoAdService;->startPolling()V

    .line 123
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "config":Lorg/json/JSONObject;
    .end local v9    # "line":Ljava/lang/String;
    goto :goto_1

    .line 124
    :cond_4
    sget-object v0, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    if-eqz v0, :cond_5

    sget-object v0, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u274c HTTP\u72b6\u6001\u7801: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lansheng/qipao/FloatWindowService;->addLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "responseCode":I
    :cond_5
    :goto_1
    goto :goto_2

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    if-eqz v1, :cond_6

    sget-object v1, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u274c \u914d\u7f6e\u5f02\u5e38: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lansheng/qipao/FloatWindowService;->addLog(Ljava/lang/String;)V

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_2
    return-void
.end method

.method private performAdvancedClick(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 7
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 328
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 330
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x10

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 333
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 334
    .local v1, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 335
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    .line 337
    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 338
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 339
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    .line 340
    .local v3, "centerX":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    .line 341
    .local v4, "centerY":F
    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    if-lez v6, :cond_5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    .line 342
    float-to-int v5, v3

    float-to-int v6, v4

    invoke-direct {p0, v5, v6}, Lansheng/qipao/AutoAdService;->simulateClickAtPosition(II)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 344
    .end local v1    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "centerX":F
    .end local v4    # "centerY":F
    :catch_0
    move-exception v1

    :cond_5
    nop

    .line 345
    return v0
.end method

.method private simulateClickAtPosition(II)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 350
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object v2, v0

    .line 351
    .local v2, "path":Landroid/graphics/Path;
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 352
    new-instance v0, Landroid/accessibilityservice/GestureDescription$Builder;

    invoke-direct {v0}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 353
    .local v0, "gestureBuilder":Landroid/accessibilityservice/GestureDescription$Builder;
    new-instance v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x32

    invoke-direct/range {v1 .. v6}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    .line 354
    invoke-virtual {v0}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v3}, Lansheng/qipao/AutoAdService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    .line 355
    const/4 v1, 0x1

    return v1

    .line 357
    .end local v0    # "gestureBuilder":Landroid/accessibilityservice/GestureDescription$Builder;
    .end local v2    # "path":Landroid/graphics/Path;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private startPolling()V
    .locals 2

    .line 133
    iget-object v0, p0, Lansheng/qipao/AutoAdService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lansheng/qipao/AutoAdService;->pollingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 155
    sget-boolean v0, Lansheng/qipao/AutoAdService;->isRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lansheng/qipao/AutoAdService;->isConfigLoaded:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lansheng/qipao/AutoAdService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 157
    .local v0, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lansheng/qipao/AutoAdService;->checkAndHandleAdFlow(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 159
    .end local v0    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 368
    const/4 v0, 0x0

    sput-boolean v0, Lansheng/qipao/AutoAdService;->isRunning:Z

    .line 369
    iget-object v0, p0, Lansheng/qipao/AutoAdService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lansheng/qipao/AutoAdService;->pollingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 370
    const/4 v0, 0x0

    sput-object v0, Lansheng/qipao/AutoAdService;->instance:Lansheng/qipao/AutoAdService;

    .line 371
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    .line 372
    return-void
.end method

.method public onInterrupt()V
    .locals 2

    .line 362
    const/4 v0, 0x0

    sput-boolean v0, Lansheng/qipao/AutoAdService;->isRunning:Z

    .line 363
    iget-object v0, p0, Lansheng/qipao/AutoAdService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lansheng/qipao/AutoAdService;->pollingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 364
    return-void
.end method

.method public onServiceConnected()V
    .locals 2

    .line 67
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 68
    sput-object p0, Lansheng/qipao/AutoAdService;->instance:Lansheng/qipao/AutoAdService;

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lansheng/qipao/AutoAdService;->isRunning:Z

    .line 70
    sget-object v0, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    const-string v1, "\u65e0\u969c\u788d\u8fde\u63a5\u6210\u529f\uff0c\u6b63\u5728\u62c9\u53d6\u914d\u7f6e..."

    invoke-virtual {v0, v1}, Lansheng/qipao/FloatWindowService;->addLog(Ljava/lang/String;)V

    .line 73
    :cond_0
    invoke-direct {p0}, Lansheng/qipao/AutoAdService;->downloadConfig()V

    .line 74
    return-void
.end method
