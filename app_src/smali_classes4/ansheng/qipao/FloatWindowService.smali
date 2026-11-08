.class public Lansheng/qipao/FloatWindowService;
.super Landroid/app/Service;
.source "FloatWindowService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "qipao_float_service"

.field private static final KEY_LOG_HISTORY:Ljava/lang/String; = "log_history"

.field private static final NOTIFICATION_ID:I = 0x3e9

.field private static final PREFS_NAME:Ljava/lang/String; = "AppPrefs"

.field public static instance:Lansheng/qipao/FloatWindowService;

.field private static isServiceCreated:Z


# instance fields
.field private floatView:Landroid/view/View;

.field private logContainer:Landroid/widget/LinearLayout;

.field private scrollView:Landroid/widget/ScrollView;

.field private viewAdded:Z

.field private windowManager:Landroid/view/WindowManager;

.field private windowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public static synthetic $r8$lambda$-aOGPgFt1Ik9qG3yduyJTO1WpMI(Lansheng/qipao/FloatWindowService;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lansheng/qipao/FloatWindowService;->lambda$createFloatView$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$0CnsJDXHRH04M-mFEd6oP59uPnM(Lansheng/qipao/FloatWindowService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lansheng/qipao/FloatWindowService;->lambda$createFloatView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mx861uQt8uVPfQM3s7WYj9g1ZmI(Lansheng/qipao/FloatWindowService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lansheng/qipao/FloatWindowService;->lambda$createFloatView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZtfG1-mMGLggsvHTK75fC3S86SM(Lansheng/qipao/FloatWindowService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lansheng/qipao/FloatWindowService;->lambda$addLog$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wS7g1iOtBG5ZB8VwS1FuvDsmnUM(Lansheng/qipao/FloatWindowService;)V
    .locals 0

    invoke-direct {p0}, Lansheng/qipao/FloatWindowService;->lambda$addLog$3()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetfloatView(Lansheng/qipao/FloatWindowService;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lansheng/qipao/FloatWindowService;->floatView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetviewAdded(Lansheng/qipao/FloatWindowService;)Z
    .locals 0

    iget-boolean p0, p0, Lansheng/qipao/FloatWindowService;->viewAdded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowManager(Lansheng/qipao/FloatWindowService;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lansheng/qipao/FloatWindowService;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowParams(Lansheng/qipao/FloatWindowService;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lansheng/qipao/FloatWindowService;->windowParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdp(Lansheng/qipao/FloatWindowService;I)I
    .locals 0

    invoke-direct {p0, p1}, Lansheng/qipao/FloatWindowService;->dp(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lansheng/qipao/FloatWindowService;->isServiceCreated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lansheng/qipao/FloatWindowService;->viewAdded:Z

    return-void
.end method

.method private convertLogText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "original"    # Ljava/lang/String;

    .line 251
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 253
    :cond_0
    move-object v0, p1

    .line 256
    .local v0, "result":Ljava/lang/String;
    const-string v1, "\u76f4\u63a5\u770b\u5e7f\u544a"

    const-string v2, "\u7ee7\u7eed\u64cd\u4f5c"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 257
    const-string v1, "\u70b9\u51fb\u5173\u95ed\u5e7f\u544a"

    const-string v2, "\u6267\u884c\u5173\u95ed\u64cd\u4f5c"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string v1, "\u627e\u4e0d\u5230X\uff0c\u7528\u8fd4\u56de\u952e"

    const-string v2, "\u672a\u68c0\u6d4b\u5230\u5173\u95ed\u6807\u8bc6\uff0c\u6267\u884c\u8fd4\u56de"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 259
    const-string v1, "\u7269\u7406\u547d\u4e2d"

    const-string v2, "\u6267\u884c"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 260
    const-string v1, "\u89e6\u53d1\u8fd4\u56de"

    const-string v3, "\u6267\u884c\u8fd4\u56de"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 261
    const-string v1, "\u5f3a\u5236\u5173\u95ed"

    const-string v3, "\u5df2\u5904\u7406"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 262
    const-string v1, "\u5df2\u5f3a\u5236\u5173\u95ed"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 263
    const-string v1, "\u51c6\u5907\u5173\u95ed"

    const-string v3, "\u51c6\u5907\u7ee7\u7eed"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 264
    const-string v1, "\u5173\u95ed\u5e7f\u544a"

    const-string v3, "\u5173\u95ed\u64cd\u4f5c"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v1, "\u770b\u5e7f\u544a"

    const-string v3, "\u6267\u884c\u64cd\u4f5c"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 266
    const-string v1, "\u70b9\u51fb"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 267
    const-string v1, "\u53d1\u73b0"

    const-string v2, "\u68c0\u6d4b\u5230"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 268
    const-string v1, "\u622a\u83b7"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 269
    const-string v1, "\u8fd4\u56de\u952e"

    const-string v2, "\u8fd4\u56de\u64cd\u4f5c"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 270
    const-string v1, "\u5957\u5a03"

    const-string v2, "\u989d\u5916\u6b65\u9aa4"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 273
    const-string v1, "\u575a\u6301\u9000\u51fa"

    const-string v2, "\u9000\u51fa\u9009\u9879"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 274
    const-string v1, "\u7ee7\u7eed\u9886 >"

    const-string v2, "\u9886\u53d6\u9009\u9879"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 275
    const-string v1, "\u7ee7\u7eed\u9886"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 276
    const-string v1, "\u7545\u542c"

    const-string v2, "\u529f\u80fd\u9009\u9879"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 277
    const-string v1, "\u76f4\u64ad"

    const-string v2, "\u7279\u5b9a\u754c\u9762"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v1, "\u53d6\u6d88"

    const-string v2, "\u53d6\u6d88\u64cd\u4f5c"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 279
    const-string v1, "\u9886\u53d6\u6210\u529f"

    const-string v2, "\u6210\u529f\u72b6\u6001"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 280
    const-string v1, "\u00d7"

    const-string v2, "\u5173\u95ed\u6807\u8bc6"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 281
    const-string v1, "X"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 282
    const-string v1, "\u6211\u7684"

    const-string v2, "\u4e2a\u4eba\u9875\u9762"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 284
    return-object v0
.end method

.method private createFloatView()V
    .locals 21

    .line 106
    move-object/from16 v1, p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v0, v2, :cond_0

    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const-string v0, "\u8bf7\u5148\u5f00\u542f\u60ac\u6d6e\u7a97\u6743\u9650"

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    invoke-virtual {v1}, Lansheng/qipao/FloatWindowService;->stopSelf()V

    return-void

    .line 111
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    .line 112
    .local v2, "card":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 113
    const-string v0, "#80000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 114
    const/4 v0, 0x6

    invoke-direct {v1, v0}, Lansheng/qipao/FloatWindowService;->dp(I)I

    move-result v4

    invoke-direct {v1, v0}, Lansheng/qipao/FloatWindowService;->dp(I)I

    move-result v5

    invoke-direct {v1, v0}, Lansheng/qipao/FloatWindowService;->dp(I)I

    move-result v6

    invoke-direct {v1, v0}, Lansheng/qipao/FloatWindowService;->dp(I)I

    move-result v0

    invoke-virtual {v2, v4, v5, v6, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 116
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v4, v0

    .line 117
    .local v4, "titleRow":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 118
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 120
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 121
    .local v5, "title":Landroid/widget/TextView;
    const-string v6, "\u6c14\u6ce1\u52a9\u624b (\u4f55\u8001\u5e08\u7248)"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 123
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 125
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    new-instance v7, Landroid/widget/Switch;

    invoke-direct {v7, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 128
    .local v7, "runningSwitch":Landroid/widget/Switch;
    const-string v10, "\u8fd0\u884c"

    invoke-virtual {v7, v10}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setTextColor(I)V

    .line 130
    invoke-virtual {v7, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 131
    new-instance v10, Lansheng/qipao/FloatWindowService$$ExternalSyntheticLambda2;

    invoke-direct {v10, v1}, Lansheng/qipao/FloatWindowService$$ExternalSyntheticLambda2;-><init>(Lansheng/qipao/FloatWindowService;)V

    invoke-virtual {v7, v10}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    new-instance v10, Landroid/widget/ScrollView;

    invoke-direct {v10, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lansheng/qipao/FloatWindowService;->scrollView:Landroid/widget/ScrollView;

    .line 140
    iget-object v10, v1, Lansheng/qipao/FloatWindowService;->scrollView:Landroid/widget/ScrollView;

    const-string v11, "#55000000"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 141
    iget-object v10, v1, Lansheng/qipao/FloatWindowService;->scrollView:Landroid/widget/ScrollView;

    const/4 v11, 0x4

    invoke-direct {v1, v11}, Lansheng/qipao/FloatWindowService;->dp(I)I

    move-result v12

    invoke-direct {v1, v11}, Lansheng/qipao/FloatWindowService;->dp(I)I

    move-result v13

    invoke-direct {v1, v11}, Lansheng/qipao/FloatWindowService;->dp(I)I

    move-result v14

    invoke-direct {v1, v11}, Lansheng/qipao/FloatWindowService;->dp(I)I

    move-result v11

    invoke-virtual {v10, v12, v13, v14, v11}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 142
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lansheng/qipao/FloatWindowService;->logContainer:Landroid/widget/LinearLayout;

    .line 143
    iget-object v10, v1, Lansheng/qipao/FloatWindowService;->logContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 144
    iget-object v10, v1, Lansheng/qipao/FloatWindowService;->scrollView:Landroid/widget/ScrollView;

    iget-object v11, v1, Lansheng/qipao/FloatWindowService;->logContainer:Landroid/widget/LinearLayout;

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11, v12}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x78

    invoke-direct {v1, v11}, Lansheng/qipao/FloatWindowService;->dp(I)I

    move-result v11

    invoke-direct {v10, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    .local v10, "logParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v11, 0x8

    invoke-direct {v1, v11}, Lansheng/qipao/FloatWindowService;->dp(I)I

    move-result v12

    invoke-direct {v1, v11}, Lansheng/qipao/FloatWindowService;->dp(I)I

    move-result v11

    invoke-virtual {v10, v0, v12, v0, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 147
    iget-object v11, v1, Lansheng/qipao/FloatWindowService;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 150
    .local v11, "buttonRow":Landroid/widget/LinearLayout;
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 151
    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .local v12, "clearButton":Landroid/widget/Button;
    const-string v13, "\u6e05\u9664\u65e5\u5fd7"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v13, 0x41400000    # 12.0f

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setTextSize(F)V

    .line 152
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v14, Landroid/widget/Button;

    invoke-direct {v14, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .local v14, "hideButton":Landroid/widget/Button;
    const-string v15, "\u9690\u85cf"

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v14, v13}, Landroid/widget/Button;->setTextSize(F)V

    .line 154
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v14, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iput-object v2, v1, Lansheng/qipao/FloatWindowService;->floatView:Landroid/view/View;

    .line 160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v0, v6, :cond_1

    const/16 v0, 0x7f6

    move/from16 v18, v0

    .local v0, "windowType":I
    goto :goto_0

    .line 161
    .end local v0    # "windowType":I
    :cond_1
    const/16 v0, 0x7d2

    move/from16 v18, v0

    .line 163
    .local v18, "windowType":I
    :goto_0
    new-instance v15, Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0xd0

    invoke-direct {v1, v0}, Lansheng/qipao/FloatWindowService;->dp(I)I

    move-result v16

    const/16 v19, 0x8

    const/16 v20, -0x3

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v20}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v15, v1, Lansheng/qipao/FloatWindowService;->windowParams:Landroid/view/WindowManager$LayoutParams;

    .line 165
    iget-object v0, v1, Lansheng/qipao/FloatWindowService;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const v6, 0x800033

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 166
    iget-object v0, v1, Lansheng/qipao/FloatWindowService;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x1e

    invoke-direct {v1, v6}, Lansheng/qipao/FloatWindowService;->dp(I)I

    move-result v6

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 167
    iget-object v0, v1, Lansheng/qipao/FloatWindowService;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0xb4

    invoke-direct {v1, v6}, Lansheng/qipao/FloatWindowService;->dp(I)I

    move-result v6

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 169
    iget-object v0, v1, Lansheng/qipao/FloatWindowService;->floatView:Landroid/view/View;

    invoke-direct {v1, v0}, Lansheng/qipao/FloatWindowService;->setDragListener(Landroid/view/View;)V

    .line 171
    new-instance v0, Lansheng/qipao/FloatWindowService$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lansheng/qipao/FloatWindowService$$ExternalSyntheticLambda3;-><init>(Lansheng/qipao/FloatWindowService;)V

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v0, Lansheng/qipao/FloatWindowService$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1}, Lansheng/qipao/FloatWindowService$$ExternalSyntheticLambda4;-><init>(Lansheng/qipao/FloatWindowService;)V

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    :try_start_0
    iget-object v0, v1, Lansheng/qipao/FloatWindowService;->windowManager:Landroid/view/WindowManager;

    iget-object v6, v1, Lansheng/qipao/FloatWindowService;->floatView:Landroid/view/View;

    iget-object v8, v1, Lansheng/qipao/FloatWindowService;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v6, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iput-boolean v3, v1, Lansheng/qipao/FloatWindowService;->viewAdded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "\u60ac\u6d6e\u7a97\u521b\u5efa\u5931\u8d25"

    invoke-static {v1, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 182
    invoke-virtual {v1}, Lansheng/qipao/FloatWindowService;->stopSelf()V

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private createNotification()Landroid/app/Notification;
    .locals 7

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lansheng/qipao/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x8000000

    .line 91
    .local v1, "pendingFlags":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    .line 92
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 94
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_1

    new-instance v4, Landroid/app/Notification$Builder;

    const-string v5, "qipao_float_service"

    invoke-direct {v4, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .local v4, "builder":Landroid/app/Notification$Builder;
    goto :goto_0

    .line 95
    .end local v4    # "builder":Landroid/app/Notification$Builder;
    :cond_1
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    .restart local v4    # "builder":Landroid/app/Notification$Builder;
    :goto_0
    const v5, 0x108009b

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 97
    const-string v6, "\u6c14\u6ce1\u81ea\u52a8\u5316"

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 98
    const-string v6, "\u60ac\u6d6e\u7a97\u670d\u52a1\u6b63\u5728\u8fd0\u884c"

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 99
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 100
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 101
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 102
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 81
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "\u6c14\u6ce1\u81ea\u52a8\u5316\u60ac\u6d6e\u7a97"

    const/4 v2, 0x2

    const-string v3, "qipao_float_service"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 82
    .local v0, "channel":Landroid/app/NotificationChannel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 83
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lansheng/qipao/FloatWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 84
    .local v1, "manager":Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 86
    .end local v0    # "channel":Landroid/app/NotificationChannel;
    .end local v1    # "manager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method private dp(I)I
    .locals 2
    .param p1, "value"    # I

    .line 305
    int-to-float v0, p1

    invoke-virtual {p0}, Lansheng/qipao/FloatWindowService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private synthetic lambda$addLog$3()V
    .locals 2

    .line 233
    iget-object v0, p0, Lansheng/qipao/FloatWindowService;->scrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$addLog$4(Ljava/lang/String;)V
    .locals 9
    .param p1, "convertedMessage"    # Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lansheng/qipao/FloatWindowService;->logContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "time":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "line":Ljava/lang/String;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 226
    .local v2, "lineView":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 229
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 230
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v3, p0, Lansheng/qipao/FloatWindowService;->logContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    iget-object v3, p0, Lansheng/qipao/FloatWindowService;->logContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/16 v5, 0x64

    if-le v3, v5, :cond_1

    iget-object v3, p0, Lansheng/qipao/FloatWindowService;->logContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 233
    :cond_1
    iget-object v3, p0, Lansheng/qipao/FloatWindowService;->scrollView:Landroid/widget/ScrollView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lansheng/qipao/FloatWindowService;->scrollView:Landroid/widget/ScrollView;

    new-instance v5, Lansheng/qipao/FloatWindowService$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lansheng/qipao/FloatWindowService$$ExternalSyntheticLambda0;-><init>(Lansheng/qipao/FloatWindowService;)V

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 236
    :cond_2
    const-string v3, "AppPrefs"

    invoke-virtual {p0, v3, v4}, Lansheng/qipao/FloatWindowService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 237
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, ""

    const-string v5, "log_history"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "existing":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, "newHistory":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const v8, 0xc350

    if-le v7, v8, :cond_3

    .line 240
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 242
    :cond_3
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 243
    return-void
.end method

.method private synthetic lambda$createFloatView$0(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 132
    sput-boolean p2, Lansheng/qipao/AutoAdService;->isRunning:Z

    .line 133
    if-eqz p2, :cond_0

    const-string v0, "\u8fd0\u884c\u5df2\u6062\u590d"

    invoke-virtual {p0, v0}, Lansheng/qipao/FloatWindowService;->addLog(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    const-string v0, "\u8fd0\u884c\u5df2\u6682\u505c"

    invoke-virtual {p0, v0}, Lansheng/qipao/FloatWindowService;->addLog(Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void
.end method

.method private synthetic lambda$createFloatView$1(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 171
    invoke-virtual {p0}, Lansheng/qipao/FloatWindowService;->clearLogs()V

    return-void
.end method

.method private synthetic lambda$createFloatView$2(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 173
    const/4 v0, 0x0

    sput-boolean v0, Lansheng/qipao/AutoAdService;->isRunning:Z

    .line 174
    invoke-virtual {p0}, Lansheng/qipao/FloatWindowService;->stopSelf()V

    .line 175
    return-void
.end method

.method private setDragListener(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 187
    new-instance v0, Lansheng/qipao/FloatWindowService$1;

    invoke-direct {v0, p0}, Lansheng/qipao/FloatWindowService$1;-><init>(Lansheng/qipao/FloatWindowService;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    return-void
.end method


# virtual methods
.method public addLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 219
    invoke-direct {p0, p1}, Lansheng/qipao/FloatWindowService;->convertLogText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "convertedMessage":Ljava/lang/String;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lansheng/qipao/FloatWindowService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lansheng/qipao/FloatWindowService$$ExternalSyntheticLambda1;-><init>(Lansheng/qipao/FloatWindowService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    return-void
.end method

.method public clearLogs()V
    .locals 3

    .line 288
    iget-object v0, p0, Lansheng/qipao/FloatWindowService;->logContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lansheng/qipao/FloatWindowService;->logContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 290
    :cond_0
    const-string v0, "AppPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lansheng/qipao/FloatWindowService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "log_history"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 291
    const-string v0, "\u65e5\u5fd7\u5df2\u6e05\u9664"

    invoke-virtual {p0, v0}, Lansheng/qipao/FloatWindowService;->addLog(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 58
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 59
    sget-boolean v0, Lansheng/qipao/FloatWindowService;->isServiceCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lansheng/qipao/FloatWindowService;->stopSelf()V

    return-void

    .line 60
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lansheng/qipao/FloatWindowService;->isServiceCreated:Z

    .line 61
    sput-object p0, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    .line 63
    :try_start_0
    invoke-direct {p0}, Lansheng/qipao/FloatWindowService;->createNotificationChannel()V

    .line 64
    invoke-direct {p0}, Lansheng/qipao/FloatWindowService;->createNotification()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {p0, v2, v1}, Lansheng/qipao/FloatWindowService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    nop

    .line 70
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lansheng/qipao/FloatWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lansheng/qipao/FloatWindowService;->windowManager:Landroid/view/WindowManager;

    .line 71
    invoke-direct {p0}, Lansheng/qipao/FloatWindowService;->createFloatView()V

    .line 72
    return-void

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "\u524d\u53f0\u670d\u52a1\u542f\u52a8\u5931\u8d25"

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    invoke-virtual {p0}, Lansheng/qipao/FloatWindowService;->stopSelf()V

    .line 68
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 296
    iget-object v0, p0, Lansheng/qipao/FloatWindowService;->floatView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lansheng/qipao/FloatWindowService;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lansheng/qipao/FloatWindowService;->viewAdded:Z

    if-eqz v0, :cond_0

    .line 297
    :try_start_0
    iget-object v0, p0, Lansheng/qipao/FloatWindowService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lansheng/qipao/FloatWindowService;->floatView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 299
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lansheng/qipao/FloatWindowService;->viewAdded:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lansheng/qipao/FloatWindowService;->floatView:Landroid/view/View;

    iput-object v1, p0, Lansheng/qipao/FloatWindowService;->logContainer:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lansheng/qipao/FloatWindowService;->scrollView:Landroid/widget/ScrollView;

    .line 300
    sput-object v1, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    sput-boolean v0, Lansheng/qipao/FloatWindowService;->isServiceCreated:Z

    .line 301
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 302
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 76
    const/4 v0, 0x1

    return v0
.end method
