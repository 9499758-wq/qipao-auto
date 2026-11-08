.class public Lansheng/qipao/AboutActivity;
.super Landroid/app/Activity;
.source "AboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createCard(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 10
    .param p1, "titleText"    # Ljava/lang/String;
    .param p2, "contentText"    # Ljava/lang/String;

    .line 83
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, "card":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 85
    const/16 v1, 0x18

    invoke-direct {p0, v1}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v1}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 86
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 87
    .local v1, "bg":Landroid/graphics/drawable/GradientDrawable;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 88
    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x10

    invoke-direct {p0, v5}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 92
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 95
    .local v5, "title":Landroid/widget/TextView;
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 97
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    const-string v7, "#1D1B20"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 100
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 103
    .local v8, "content":Landroid/widget/TextView;
    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const/high16 v9, 0x41700000    # 15.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 105
    const-string v9, "#49454F"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    const/16 v7, 0xc

    invoke-direct {p0, v7}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v7

    invoke-virtual {v8, v6, v7, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 108
    const v6, 0x3fb33333    # 1.4f

    invoke-virtual {v8, v6, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 109
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    return-object v0
.end method

.method private createHighlightCard(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 10
    .param p1, "titleText"    # Ljava/lang/String;
    .param p2, "contentText"    # Ljava/lang/String;

    .line 115
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "card":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 117
    const/16 v2, 0x18

    invoke-direct {p0, v2}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v2}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 119
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 120
    .local v2, "bg":Landroid/graphics/drawable/GradientDrawable;
    const-string v3, "#FFF0F0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 121
    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 122
    invoke-direct {p0, v1}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v1

    const-string v3, "#E57373"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 123
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x10

    invoke-direct {p0, v5}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 130
    .local v5, "title":Landroid/widget/TextView;
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const/high16 v7, 0x41980000    # 19.0f

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 132
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 133
    const-string v7, "#D32F2F"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 135
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 138
    .local v8, "content":Landroid/widget/TextView;
    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const/high16 v9, 0x41700000    # 15.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 140
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    const-string v9, "#C62828"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 143
    const/16 v7, 0xe

    invoke-direct {p0, v7}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v7

    invoke-virtual {v8, v6, v7, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 144
    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-virtual {v8, v6, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 145
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    return-object v0
.end method

.method private dp(I)I
    .locals 2
    .param p1, "value"    # I

    .line 150
    int-to-float v0, p1

    invoke-virtual {p0}, Lansheng/qipao/AboutActivity;->getResources()Landroid/content/res/Resources;

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


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    .local v0, "root":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 23
    const/4 v2, 0x0

    .line 24
    .local v2, "statusBarHeight":I
    const/4 v3, 0x0

    .line 25
    .local v3, "navBarHeight":I
    invoke-virtual {p0}, Lansheng/qipao/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "status_bar_height"

    const-string v6, "dimen"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 26
    .local v4, "statusBarId":I
    if-lez v4, :cond_0

    .line 27
    invoke-virtual {p0}, Lansheng/qipao/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 29
    :cond_0
    invoke-virtual {p0}, Lansheng/qipao/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v8, "navigation_bar_height"

    invoke-virtual {v5, v8, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 30
    .local v5, "navBarId":I
    if-lez v5, :cond_1

    .line 31
    invoke-virtual {p0}, Lansheng/qipao/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 35
    :cond_1
    const/16 v6, 0x14

    invoke-direct {p0, v6}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v7

    invoke-direct {p0, v6}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-direct {p0, v6}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v9

    invoke-direct {p0, v6}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v0, v7, v8, v9, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 36
    const-string v6, "#F6F5FA"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 39
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    .local v6, "header":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 41
    const/16 v1, 0x11

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 42
    const/16 v7, 0x20

    invoke-direct {p0, v7}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v8

    invoke-direct {p0, v7}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v9

    invoke-direct {p0, v7}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v10

    invoke-direct {p0, v7}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v7

    invoke-virtual {v6, v8, v9, v10, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 43
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 44
    .local v7, "headerBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v8, "#6C5CBA"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 45
    const/16 v8, 0x18

    invoke-direct {p0, v8}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 46
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 50
    .local v8, "title":Landroid/widget/TextView;
    const-string v11, "\u5173\u4e8e\u6c14\u6ce1\u81ea\u52a8\u5316"

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const/high16 v11, 0x41c00000    # 24.0f

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 52
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 53
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    .local v11, "sub":Landroid/widget/TextView;
    const-string v12, "\u9ad8\u6548 \u00b7 \u7b80\u6d01 \u00b7 \u81ea\u52a8\u5316"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 59
    const-string v12, "#C9BCF0"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lansheng/qipao/AboutActivity;->dp(I)I

    move-result v1

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v1, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 62
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    const-string v1, "\u4f5c\u8005"

    const-string v9, "\u4f55\u8001\u5e08"

    invoke-direct {p0, v1, v9}, Lansheng/qipao/AboutActivity;->createCard(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    const-string v1, "\u6838\u5fc3\u7279\u8272"

    const-string v9, "\u4f55\u8001\u5e08\u4e13\u7248\uff1a\u5168\u81ea\u52a8\u9886\u65f6\u957f\u3001\u667a\u80fd\u8df3\u8fc7\u76f4\u64ad\u633d\u7559\u3001\u5168\u673a\u578b\u9002\u914d"

    invoke-direct {p0, v1, v9}, Lansheng/qipao/AboutActivity;->createCard(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    const-string v1, "\u4f7f\u7528\u4f53\u9a8c"

    const-string v9, "\u7eaf\u51c0\u65e0\u540e\u95e8\uff0c\u8fd0\u884c\u6d41\u7545\u7a33\u5b9a\uff0c\u4e13\u5c5e\u5b9a\u5236\u3002"

    invoke-direct {p0, v1, v9}, Lansheng/qipao/AboutActivity;->createCard(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    const-string v1, "\u514d\u8d23\u58f0\u660e"

    const-string v9, "\u672c\u8f6f\u4ef6\u4ec5\u4f9b\u5b66\u4e60Android\u65e0\u969c\u788d\u5f00\u53d1\u6280\u672f\u4f7f\u7528\n\u8bf7\u4e8e\u5b66\u4e60\u540e24\u5c0f\u65f6\u5185\u81ea\u884c\u5220\u9664\n\u7981\u6b62\u7528\u4e8e\u4efb\u4f55\u5546\u4e1a\u7528\u9014\u53ca\u975e\u6cd5\u7834\u574f\u5e73\u53f0\u751f\u6001"

    invoke-direct {p0, v1, v9}, Lansheng/qipao/AboutActivity;->createHighlightCard(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0, v0}, Lansheng/qipao/AboutActivity;->setContentView(Landroid/view/View;)V

    .line 79
    return-void
.end method
