.class public Lansheng/qipao/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final COLOR_BG:I

.field private static final COLOR_BUTTON_BG_LIGHT:I

.field private static final COLOR_BUTTON_TEXT:I

.field private static final COLOR_PRIMARY_DARK:I

.field private static final COLOR_TEXT_MAIN:I

.field private static final COLOR_TEXT_SUB:I

.field private static final COLOR_WHITE:I

.field private static final REQUEST_NOTIFICATION:I = 0x3ea

.field private static final REQUEST_OVERLAY:I = 0x3e9


# direct methods
.method public static synthetic $r8$lambda$-UbOkXah-U3incyOLfoWfczY2pg(Lansheng/qipao/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lansheng/qipao/MainActivity;->lambda$createInterface$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0hqStssmrVBSTt-BQGXAdFWsHIg(Lansheng/qipao/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lansheng/qipao/MainActivity;->lambda$createInterface$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CjSfi1ZOLGFaFZg-3woVDXVp5tM(Lansheng/qipao/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lansheng/qipao/MainActivity;->lambda$checkForUpdate$7(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GaWM_gbtTg-20EmPQ9MAoleSReA(Lansheng/qipao/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lansheng/qipao/MainActivity;->lambda$createInterface$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Iw1e8rtRgTkJTbGmxhQWB0dFnpI(Lansheng/qipao/MainActivity;ZLorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lansheng/qipao/MainActivity;->lambda$checkForUpdate$8(ZLorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kgzz8bJc8qoS7-8qMhxr37wiFy4(Lansheng/qipao/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lansheng/qipao/MainActivity;->lambda$createInterface$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MtZ8Y6n4XTMBDKDZ6vd9_OjZHY8(Lansheng/qipao/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lansheng/qipao/MainActivity;->lambda$createInterface$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$orTeRTEl_ssZ1_G9YeRydkyDEUQ(Lansheng/qipao/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lansheng/qipao/MainActivity;->lambda$checkForUpdate$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$y0hVpmL5Wabf-qMhkwSpExM3o40(Lansheng/qipao/MainActivity;Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lansheng/qipao/MainActivity;->lambda$showHistoryLogs$6(Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yWTYCanrOZxN3bDsoPzEIMFEAyA(Lansheng/qipao/MainActivity;Ljava/lang/String;ZLandroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lansheng/qipao/MainActivity;->lambda$showCustomUpdateDialog$10(Ljava/lang/String;ZLandroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "#6C5CBA"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lansheng/qipao/MainActivity;->COLOR_PRIMARY_DARK:I

    .line 44
    const-string v0, "#EBE5F6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lansheng/qipao/MainActivity;->COLOR_BUTTON_BG_LIGHT:I

    .line 45
    const-string v0, "#5C49A8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lansheng/qipao/MainActivity;->COLOR_BUTTON_TEXT:I

    .line 46
    const-string v0, "#F6F5FA"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lansheng/qipao/MainActivity;->COLOR_BG:I

    .line 47
    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lansheng/qipao/MainActivity;->COLOR_WHITE:I

    .line 48
    const-string v0, "#1D1B20"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lansheng/qipao/MainActivity;->COLOR_TEXT_MAIN:I

    .line 49
    const-string v0, "#49454F"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lansheng/qipao/MainActivity;->COLOR_TEXT_SUB:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkForUpdate()V
    .locals 0

    return-void
.end method

.method private checkPermissionAndStart()V
    .locals 4

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const-string v0, "\u8bf7\u5148\u5f00\u542f\u60ac\u6d6e\u7a97\u6743\u9650"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    invoke-direct {p0}, Lansheng/qipao/MainActivity;->requestOverlayPermission()V

    .line 149
    return-void

    .line 152
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lansheng/qipao/FloatWindowService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_1

    .line 154
    invoke-virtual {p0, v0}, Lansheng/qipao/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0, v0}, Lansheng/qipao/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 158
    :goto_0
    const-string v1, "\u60ac\u6d6e\u7a97\u670d\u52a1\u5df2\u542f\u52a8"

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "\u542f\u52a8\u5931\u8d25"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private createCard()Landroid/widget/LinearLayout;
    .locals 7

    .line 205
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 206
    .local v0, "card":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 207
    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v1}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 208
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 209
    .local v1, "bg":Landroid/graphics/drawable/GradientDrawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 210
    sget v3, Lansheng/qipao/MainActivity;->COLOR_WHITE:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 211
    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 212
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 213
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 214
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v3}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v4, v2, v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 215
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    return-object v0
.end method

.method private createDarkButton(Ljava/lang/String;)Landroid/widget/Button;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .line 260
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 261
    .local v0, "btn":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 262
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 263
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 264
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 265
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 266
    .local v3, "bg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 267
    sget v4, Lansheng/qipao/MainActivity;->COLOR_PRIMARY_DARK:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 268
    const/16 v4, 0x18

    invoke-direct {p0, v4}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 269
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 270
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 271
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {v4, v1, v5, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 272
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    return-object v0
.end method

.method private createInterface()V
    .locals 18

    .line 60
    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, "rootScroll":Landroid/widget/ScrollView;
    sget v2, Lansheng/qipao/MainActivity;->COLOR_BG:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 62
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 65
    const/4 v3, 0x0

    .line 66
    .local v3, "statusBarHeight":I
    invoke-virtual {v0}, Lansheng/qipao/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "dimen"

    const-string v6, "android"

    const-string v7, "status_bar_height"

    invoke-virtual {v4, v7, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 67
    .local v4, "resourceId":I
    if-lez v4, :cond_0

    .line 68
    invoke-virtual {v0}, Lansheng/qipao/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 70
    :cond_0
    const/16 v5, 0x10

    invoke-direct {v0, v5}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {v0, v5}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v7

    add-int/2addr v7, v3

    invoke-direct {v0, v5}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v8

    invoke-direct {v0, v5}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v1, v6, v7, v8, v5}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 72
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    .local v5, "root":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 75
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    .local v6, "header":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    const/16 v2, 0x11

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 78
    const/16 v2, 0x18

    invoke-direct {v0, v2}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v7

    invoke-direct {v0, v2}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v8

    invoke-direct {v0, v2}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v9

    invoke-direct {v0, v2}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 79
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 80
    .local v2, "headerBg":Landroid/graphics/drawable/GradientDrawable;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 81
    sget v8, Lansheng/qipao/MainActivity;->COLOR_PRIMARY_DARK:I

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 82
    const/16 v8, 0x14

    invoke-direct {v0, v8}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 83
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 87
    .local v8, "title":Landroid/widget/TextView;
    const-string v11, "\u6c14\u6ce1\u81ea\u52a8\u5316"

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const/high16 v11, 0x41e00000    # 28.0f

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 89
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    .local v9, "subtitle":Landroid/widget/TextView;
    const-string v11, "\u4f55\u8001\u5e08\u4e13\u5c5e\u5b9a\u5236 \u00b7 \u7eaf\u51c0\u7a33\u5b9a\u7248"

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 96
    const-string v11, "#D8D0F0"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    const/4 v11, 0x4

    invoke-direct {v0, v11}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v11

    invoke-virtual {v9, v7, v11, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    invoke-direct {v0}, Lansheng/qipao/MainActivity;->createCard()Landroid/widget/LinearLayout;

    move-result-object v10

    .line 102
    .local v10, "cardPermission":Landroid/widget/LinearLayout;
    const-string v11, "\u6743\u9650\u8bbe\u7f6e"

    invoke-direct {v0, v11}, Lansheng/qipao/MainActivity;->createTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    const-string v11, "\u9996\u6b21\u4f7f\u7528\u524d\u8bf7\u5b8c\u6210\u4ee5\u4e0b\u6743\u9650\u8bbe\u7f6e"

    invoke-direct {v0, v11}, Lansheng/qipao/MainActivity;->createSubTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    const-string v11, "\u5f00\u542f\u60ac\u6d6e\u7a97\u6743\u9650"

    invoke-direct {v0, v11}, Lansheng/qipao/MainActivity;->createLightButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v11

    .line 106
    .local v11, "btnOverlay":Landroid/widget/Button;
    new-instance v12, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v12, v0}, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda9;-><init>(Lansheng/qipao/MainActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    const-string v12, "\u5f00\u542f\u65e0\u969c\u788d\u670d\u52a1"

    invoke-direct {v0, v12}, Lansheng/qipao/MainActivity;->createLightButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v12

    .line 110
    .local v12, "btnAccessibility":Landroid/widget/Button;
    new-instance v13, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v13, v0}, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda10;-><init>(Lansheng/qipao/MainActivity;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    invoke-direct {v0}, Lansheng/qipao/MainActivity;->createCard()Landroid/widget/LinearLayout;

    move-result-object v13

    .line 118
    .local v13, "cardAction":Landroid/widget/LinearLayout;
    const-string v14, "\u5f00\u59cb\u8fd0\u884c"

    invoke-direct {v0, v14}, Lansheng/qipao/MainActivity;->createTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    const-string v14, "\u6743\u9650\u5f00\u542f\u540e\u5373\u53ef\u663e\u793a\u60ac\u6d6e\u7a97"

    invoke-direct {v0, v14}, Lansheng/qipao/MainActivity;->createSubTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    const-string v14, "\u68c0\u67e5\u6743\u9650\u5e76\u663e\u793a\u60ac\u6d6e\u7a97"

    invoke-direct {v0, v14}, Lansheng/qipao/MainActivity;->createDarkButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v14

    .line 122
    .local v14, "btnStart":Landroid/widget/Button;
    new-instance v15, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v15, v0}, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda11;-><init>(Lansheng/qipao/MainActivity;)V

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    const-string v15, "\u67e5\u770b\u5386\u53f2\u65e5\u5fd7"

    invoke-direct {v0, v15}, Lansheng/qipao/MainActivity;->createLightButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v15

    .line 126
    .local v15, "btnLogs":Landroid/widget/Button;
    new-instance v7, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v7, v0}, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda12;-><init>(Lansheng/qipao/MainActivity;)V

    invoke-virtual {v15, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    invoke-virtual {v5, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    invoke-direct {v0}, Lansheng/qipao/MainActivity;->createCard()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 131
    .local v7, "cardAbout":Landroid/widget/LinearLayout;
    move-object/from16 v16, v2

    .end local v2    # "headerBg":Landroid/graphics/drawable/GradientDrawable;
    .local v16, "headerBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v2, "\u5173\u4e8e"

    invoke-direct {v0, v2}, Lansheng/qipao/MainActivity;->createTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    const-string v2, "\u67e5\u770b\u5173\u4e8e\u4fe1\u606f"

    invoke-direct {v0, v2}, Lansheng/qipao/MainActivity;->createLightButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 133
    .local v2, "btnAbout":Landroid/widget/Button;
    move/from16 v17, v3

    .end local v3    # "statusBarHeight":I
    .local v17, "statusBarHeight":I
    sget v3, Lansheng/qipao/MainActivity;->COLOR_TEXT_SUB:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 134
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 135
    new-instance v3, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda1;-><init>(Lansheng/qipao/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    invoke-virtual {v1, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 142
    invoke-virtual {v0, v1}, Lansheng/qipao/MainActivity;->setContentView(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method private createLightButton(Ljava/lang/String;)Landroid/widget/Button;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .line 243
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, "btn":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 245
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 246
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 247
    sget v2, Lansheng/qipao/MainActivity;->COLOR_BUTTON_TEXT:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 248
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 249
    .local v2, "bg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 250
    sget v3, Lansheng/qipao/MainActivity;->COLOR_BUTTON_BG_LIGHT:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 251
    const/16 v3, 0x18

    invoke-direct {p0, v3}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 252
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 253
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 254
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v4}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v3, v1, v5, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 255
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    return-object v0
.end method

.method private createSubTitle(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .line 231
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 232
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 234
    sget v1, Lansheng/qipao/MainActivity;->COLOR_TEXT_SUB:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 236
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 237
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 238
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    return-object v0
.end method

.method private createTitle(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 220
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 221
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 223
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 224
    sget v1, Lansheng/qipao/MainActivity;->COLOR_TEXT_MAIN:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 226
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    return-object v0
.end method

.method private dp(I)I
    .locals 2
    .param p1, "value"    # I

    .line 468
    int-to-float v0, p1

    invoke-virtual {p0}, Lansheng/qipao/MainActivity;->getResources()Landroid/content/res/Resources;

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

.method private isVersionNewer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "remote"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/lang/String;

    .line 320
    const-string v0, "\\."

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "rParts":[Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "lParts":[Ljava/lang/String;
    array-length v3, v2

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 323
    .local v3, "maxLen":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 324
    array-length v5, v2

    if-ge v4, v5, :cond_0

    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 325
    .local v5, "r":I
    :goto_1
    array-length v6, v0

    if-ge v4, v6, :cond_1

    aget-object v6, v0, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 326
    .local v6, "l":I
    :goto_2
    if-eq v5, v6, :cond_3

    if-le v5, v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 323
    .end local v5    # "r":I
    .end local v6    # "l":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 328
    .end local v4    # "i":I
    :cond_4
    return v1

    .line 329
    .end local v0    # "lParts":[Ljava/lang/String;
    .end local v2    # "rParts":[Ljava/lang/String;
    .end local v3    # "maxLen":I
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    return v1
.end method

.method private synthetic lambda$checkForUpdate$7(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63d0\u793a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 299
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "\u8bf7\u524d\u5f80\u846b\u82a6\u4fa0\u4e09\u697c\u66f4\u65b0\u6700\u65b0\u7248\u672c"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "#"

    invoke-direct {p0, v1, v0, v2}, Lansheng/qipao/MainActivity;->showCustomUpdateDialog(ZLorg/json/JSONArray;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method private synthetic lambda$checkForUpdate$8(ZLorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0
    .param p1, "forceUpdate"    # Z
    .param p2, "changelogArray"    # Lorg/json/JSONArray;
    .param p3, "realUpdateUrl"    # Ljava/lang/String;

    .line 310
    invoke-direct {p0, p1, p2, p3}, Lansheng/qipao/MainActivity;->showCustomUpdateDialog(ZLorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$checkForUpdate$9()V
    .locals 13

    .line 280
    const-string v0, "error"

    :try_start_0
    const-string v1, "http://309096184.xyz/\u6c14\u6ce1\u81ea\u52a8\u5316/\u6c14\u6ce1\u81ea\u52a8\u5316.txt"

    .line 281
    .local v1, "updateUrl":Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 282
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 283
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 284
    const/16 v5, 0x1388

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 285
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 287
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_2

    .line 288
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 289
    .local v5, "reader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .local v6, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "line":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 293
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 295
    .local v7, "json":Lorg/json/JSONObject;
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 296
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "error":Ljava/lang/String;
    new-instance v4, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v0}, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda2;-><init>(Lansheng/qipao/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lansheng/qipao/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 301
    return-void

    .line 304
    .end local v0    # "error":Ljava/lang/String;
    :cond_1
    const-string v0, "version"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "remoteVersion":Ljava/lang/String;
    const-string v9, "forceUpdate"

    invoke-virtual {v7, v9, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 306
    .local v4, "forceUpdate":Z
    const-string v9, "updateUrl"

    const-string v10, "#"

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 307
    .local v9, "realUpdateUrl":Ljava/lang/String;
    const-string v10, "changelog"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 308
    .local v10, "changelogArray":Lorg/json/JSONArray;
    const-string v11, "1.0.1"

    .line 309
    .local v11, "currentVersion":Ljava/lang/String;
    invoke-direct {p0, v0, v11}, Lansheng/qipao/MainActivity;->isVersionNewer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 310
    new-instance v12, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v12, p0, v4, v10, v9}, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda3;-><init>(Lansheng/qipao/MainActivity;ZLorg/json/JSONArray;Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Lansheng/qipao/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v0    # "remoteVersion":Ljava/lang/String;
    .end local v1    # "updateUrl":Ljava/lang/String;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "forceUpdate":Z
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "realUpdateUrl":Ljava/lang/String;
    .end local v10    # "changelogArray":Lorg/json/JSONArray;
    .end local v11    # "currentVersion":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 313
    :catch_0
    move-exception v0

    .line 315
    :goto_1
    return-void
.end method

.method private synthetic lambda$createInterface$0(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 106
    invoke-direct {p0}, Lansheng/qipao/MainActivity;->requestOverlayPermission()V

    return-void
.end method

.method private synthetic lambda$createInterface$1(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lansheng/qipao/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    const-string v0, "\u8bf7\u627e\u5230\u6c14\u6ce1\u81ea\u52a8\u5316\u5e76\u5f00\u542f\u65e0\u969c\u788d\u670d\u52a1"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    return-void
.end method

.method private synthetic lambda$createInterface$2(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 122
    invoke-direct {p0}, Lansheng/qipao/MainActivity;->checkPermissionAndStart()V

    return-void
.end method

.method private synthetic lambda$createInterface$3(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 126
    invoke-direct {p0}, Lansheng/qipao/MainActivity;->showHistoryLogs()V

    return-void
.end method

.method private synthetic lambda$createInterface$4(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lansheng/qipao/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lansheng/qipao/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    return-void
.end method

.method private synthetic lambda$showCustomUpdateDialog$10(Ljava/lang/String;ZLandroid/app/Dialog;Landroid/view/View;)V
    .locals 4
    .param p1, "updateUrl"    # Ljava/lang/String;
    .param p2, "forceUpdate"    # Z
    .param p3, "dialog"    # Landroid/app/Dialog;
    .param p4, "v"    # Landroid/view/View;

    .line 388
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lansheng/qipao/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "\u65e0\u6cd5\u6253\u5f00\u94fe\u63a5\uff0c\u8bf7\u5230\u846b\u82a6\u4fa0\u4e09\u697c\u66f4\u65b0"

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 393
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 395
    :cond_0
    const-string v1, "\u8bf7\u5230\u846b\u82a6\u4fa0\u4e09\u697c\u66f4\u65b0"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 397
    :goto_1
    if-nez p2, :cond_1

    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 398
    :cond_1
    return-void
.end method

.method static synthetic lambda$showCustomUpdateDialog$11(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "v"    # Landroid/view/View;

    .line 417
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showCustomUpdateDialog$12(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 436
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$showHistoryLogs$5(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 193
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showHistoryLogs$6(Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 195
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "log_history"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 196
    sget-object v0, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    invoke-virtual {v0}, Lansheng/qipao/FloatWindowService;->clearLogs()V

    .line 199
    :cond_0
    const-string v0, "\u5386\u53f2\u65e5\u5fd7\u5df2\u6e05\u9664"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    return-void
.end method

.method private requestNotificationPermission()V
    .locals 2

    .line 448
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 449
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Lansheng/qipao/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lansheng/qipao/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 453
    :cond_0
    return-void
.end method

.method private requestOverlayPermission()V
    .locals 3

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lansheng/qipao/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lansheng/qipao/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-direct {p0}, Lansheng/qipao/MainActivity;->checkPermissionAndStart()V

    .line 170
    :goto_0
    return-void
.end method

.method private showCustomUpdateDialog(ZLorg/json/JSONArray;Ljava/lang/String;)V
    .locals 19
    .param p1, "forceUpdate"    # Z
    .param p2, "changelogArray"    # Lorg/json/JSONArray;
    .param p3, "updateUrl"    # Ljava/lang/String;

    .line 336
    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    .line 337
    .local v3, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 338
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v6, v0

    .line 341
    .local v6, "mainLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 342
    sget v0, Lansheng/qipao/MainActivity;->COLOR_WHITE:I

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 343
    const/16 v7, 0x18

    invoke-direct {v1, v7}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v0

    invoke-direct {v1, v7}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v8

    invoke-direct {v1, v7}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v9

    invoke-direct {v1, v7}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v10

    invoke-virtual {v6, v0, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 344
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v8, v0

    .line 345
    .local v8, "bg":Landroid/graphics/drawable/GradientDrawable;
    sget v0, Lansheng/qipao/MainActivity;->COLOR_WHITE:I

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 346
    invoke-direct {v1, v7}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 347
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 349
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v9, v0

    .line 350
    .local v9, "titleView":Landroid/widget/TextView;
    const-string v0, "\u53d1\u73b0\u65b0\u7248\u672c"

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 352
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 353
    sget v0, Lansheng/qipao/MainActivity;->COLOR_TEXT_MAIN:I

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 355
    const/16 v0, 0x14

    invoke-direct {v1, v0}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v0

    invoke-virtual {v9, v5, v5, v5, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 356
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v0

    .line 360
    .local v11, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v12, :cond_1

    move-object/from16 v12, p2

    :try_start_1
    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "i":I
    :catch_0
    move-exception v0

    goto :goto_1

    .line 360
    .restart local v0    # "i":I
    :cond_1
    move-object/from16 v12, p2

    .line 363
    .end local v0    # "i":I
    goto :goto_2

    .line 361
    :catch_1
    move-exception v0

    move-object/from16 v12, p2

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v13, "\u8bf7\u524d\u5f80\u846b\u82a6\u4fa0\u4e09\u697c\u66f4\u65b0\u6700\u65b0\u7248\u672c"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 365
    .local v0, "contentView":Landroid/widget/TextView;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    const/high16 v13, 0x41700000    # 15.0f

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 367
    sget v13, Lansheng/qipao/MainActivity;->COLOR_TEXT_SUB:I

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 369
    const v13, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v13, v13}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 370
    invoke-direct {v1, v7}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v13

    invoke-virtual {v0, v5, v5, v5, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 371
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 373
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 374
    .local v13, "buttonLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 375
    invoke-virtual {v13, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 377
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 378
    .local v10, "positiveBtn":Landroid/widget/Button;
    const-string v14, "\u7acb\u5373\u66f4\u65b0"

    invoke-virtual {v10, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 379
    const/high16 v14, 0x41600000    # 14.0f

    invoke-virtual {v10, v14}, Landroid/widget/Button;->setTextSize(F)V

    .line 380
    invoke-virtual {v10, v5}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 381
    const/4 v15, -0x1

    invoke-virtual {v10, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 382
    new-instance v15, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v15}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 383
    .local v15, "posBg":Landroid/graphics/drawable/GradientDrawable;
    sget v4, Lansheng/qipao/MainActivity;->COLOR_PRIMARY_DARK:I

    invoke-virtual {v15, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 384
    invoke-direct {v1, v7}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v15, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 385
    invoke-virtual {v10, v15}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 387
    new-instance v4, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda0;

    move-object/from16 v7, p3

    invoke-direct {v4, v1, v7, v2, v3}, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda0;-><init>(Lansheng/qipao/MainActivity;Ljava/lang/String;ZLandroid/app/Dialog;)V

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    const/4 v4, -0x2

    if-eqz v2, :cond_2

    .line 401
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 402
    .local v14, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0xa0

    invoke-direct {v1, v4}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v4

    iput v4, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 403
    invoke-virtual {v10, v14}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    invoke-virtual {v13, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 405
    .end local v14    # "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v18, v0

    goto :goto_3

    .line 406
    :cond_2
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 407
    .local v4, "negativeBtn":Landroid/widget/Button;
    const-string v5, "\u4ee5\u540e\u518d\u8bf4"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 408
    invoke-virtual {v4, v14}, Landroid/widget/Button;->setTextSize(F)V

    .line 409
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 410
    sget v14, Lansheng/qipao/MainActivity;->COLOR_TEXT_SUB:I

    invoke-virtual {v4, v14}, Landroid/widget/Button;->setTextColor(I)V

    .line 411
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 412
    new-instance v14, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v14}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 413
    .local v14, "negBg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v14, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 414
    const/4 v5, 0x1

    invoke-direct {v1, v5}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v5

    const-string v16, "#D0D0D0"

    move-object/from16 v18, v0

    .end local v0    # "contentView":Landroid/widget/TextView;
    .local v18, "contentView":Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v14, v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 415
    const/16 v5, 0x18

    invoke-direct {v1, v5}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 416
    invoke-virtual {v4, v14}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 417
    new-instance v0, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, v3}, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda4;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 420
    .local v0, "negParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x64

    invoke-direct {v1, v5}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 421
    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 422
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 425
    .local v2, "posParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x64

    invoke-direct {v1, v5}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 426
    invoke-virtual {v10, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    invoke-virtual {v13, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 430
    .end local v0    # "negParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "posParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "negativeBtn":Landroid/widget/Button;
    .end local v14    # "negBg":Landroid/graphics/drawable/GradientDrawable;
    :goto_3
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 433
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 434
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 435
    if-eqz p1, :cond_3

    .line 436
    new-instance v0, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 439
    :cond_3
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 440
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 441
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1}, Lansheng/qipao/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v2

    const-wide v16, 0x3feb333333333333L    # 0.85

    mul-double v4, v4, v16

    double-to-int v2, v4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 442
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 444
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 445
    return-void
.end method

.method private showHistoryLogs()V
    .locals 9

    .line 173
    const-string v0, "AppPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lansheng/qipao/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "log_history"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "history":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "\u5386\u53f2\u8fd0\u884c\u65e5\u5fd7"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 178
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 179
    .local v3, "scrollView":Landroid/widget/ScrollView;
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 180
    .local v4, "textView":Landroid/widget/TextView;
    const/16 v5, 0x10

    invoke-direct {p0, v5}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v5}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v7

    invoke-direct {p0, v5}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v8

    invoke-direct {p0, v5}, Lansheng/qipao/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 181
    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 182
    sget v5, Lansheng/qipao/MainActivity;->COLOR_TEXT_MAIN:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    const-string v5, "\u6682\u65e0\u65e5\u5fd7\u8bb0\u5f55"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 186
    sget v5, Lansheng/qipao/MainActivity;->COLOR_TEXT_SUB:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 191
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 193
    new-instance v5, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda7;-><init>()V

    const-string v6, "\u5173\u95ed"

    invoke-virtual {v2, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    new-instance v5, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0, v0}, Lansheng/qipao/MainActivity$$ExternalSyntheticLambda8;-><init>(Lansheng/qipao/MainActivity;Landroid/content/SharedPreferences;)V

    const-string v6, "\u6e05\u9664\u65e5\u5fd7"

    invoke-virtual {v2, v6, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 202
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 457
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 458
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    .line 459
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    const-string v0, "\u60ac\u6d6e\u7a97\u6743\u9650\u6ca1\u6709\u5f00\u542f"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 460
    :cond_1
    :goto_0
    const-string v0, "\u60ac\u6d6e\u7a97\u6743\u9650\u5df2\u5f00\u542f"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 465
    :cond_2
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-direct {p0}, Lansheng/qipao/MainActivity;->requestNotificationPermission()V

    .line 55
    invoke-direct {p0}, Lansheng/qipao/MainActivity;->createInterface()V

    .line 56
    invoke-direct {p0}, Lansheng/qipao/MainActivity;->checkForUpdate()V

    .line 57
    return-void
.end method
