.class public final Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;
.super Lcom/google/android/material/carousel/CarouselStrategy;
.source "MultiBrowseCarouselStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;
    }
.end annotation


# static fields
.field private static final MEDIUM_COUNTS:[I

.field private static final MEDIUM_COUNTS_COMPACT:[I

.field private static final MEDIUM_ITEM_FLEX_PERCENTAGE:F = 0.1f

.field private static final SMALL_COUNTS:[I


# instance fields
.field private final forceCompactArrangement:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->SMALL_COUNTS:[I

    .line 56
    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS:[I

    .line 57
    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS_COMPACT:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;-><init>(Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "forceCompactArrangement"    # Z

    .line 79
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselStrategy;-><init>()V

    .line 80
    iput-boolean p1, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->forceCompactArrangement:Z

    .line 81
    return-void
.end method

.method private static findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;
    .locals 22
    .param p0, "availableSpace"    # F
    .param p1, "targetSmallSize"    # F
    .param p2, "minSmallSize"    # F
    .param p3, "maxSmallSize"    # F
    .param p4, "smallCounts"    # [I
    .param p5, "targetMediumSize"    # F
    .param p6, "mediumCounts"    # [I
    .param p7, "targetLargeSize"    # F
    .param p8, "largeCounts"    # [I

    .line 227
    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    const/4 v3, 0x0

    .line 228
    .local v3, "lowestCostArrangement":Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;
    const/4 v4, 0x1

    .line 229
    .local v4, "priority":I
    array-length v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_4

    aget v17, v2, v7

    .line 230
    .local v17, "largeCount":I
    array-length v8, v1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    aget v15, v1, v9

    .line 231
    .local v15, "mediumCount":I
    array-length v10, v0

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_2

    aget v13, v0, v11

    .line 232
    .local v13, "smallCount":I
    move v12, v8

    new-instance v8, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;

    move v14, v9

    move v9, v4

    move v4, v14

    move/from16 v18, p0

    move/from16 v14, p5

    move/from16 v16, p7

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v19, v12

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    .end local v4    # "priority":I
    .local v9, "priority":I
    invoke-direct/range {v8 .. v18}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;-><init>(IFFFIFIFIF)V

    .line 244
    .local v8, "arrangement":Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;
    if-eqz v3, :cond_0

    iget v10, v8, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->cost:F

    iget v11, v3, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->cost:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 245
    :cond_0
    move-object v3, v8

    .line 246
    iget v10, v3, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->cost:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    .line 251
    return-object v3

    .line 254
    :cond_1
    nop

    .end local v8    # "arrangement":Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;
    .end local v13    # "smallCount":I
    add-int/lit8 v8, v9, 0x1

    .line 231
    .end local v9    # "priority":I
    .local v8, "priority":I
    add-int/lit8 v11, v21, 0x1

    move v9, v4

    move v4, v8

    move/from16 v8, v19

    move/from16 v10, v20

    goto :goto_2

    .end local v8    # "priority":I
    .restart local v4    # "priority":I
    :cond_2
    move/from16 v19, v9

    move v9, v4

    move/from16 v4, v19

    move/from16 v19, v8

    .line 230
    .end local v4    # "priority":I
    .end local v15    # "mediumCount":I
    .restart local v9    # "priority":I
    add-int/lit8 v4, v4, 0x1

    move v8, v9

    move v9, v4

    move v4, v8

    move/from16 v8, v19

    goto :goto_1

    .line 229
    .end local v9    # "priority":I
    .end local v17    # "largeCount":I
    .restart local v4    # "priority":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 258
    :cond_4
    return-object v3
.end method

.method private getExtraSmallSize(Landroid/content/Context;)F
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->m3_carousel_gone_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getSmallSizeMax(Landroid/content/Context;)F
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->m3_carousel_small_item_size_max:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getSmallSizeMin(Landroid/content/Context;)F
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->m3_carousel_small_item_size_min:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private static maxValue([I)I
    .locals 4
    .param p0, "array"    # [I

    .line 262
    const/high16 v0, -0x80000000

    .line 263
    .local v0, "largest":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    .line 264
    .local v3, "j":I
    if-le v3, v0, :cond_0

    .line 265
    move v0, v3

    .line 263
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :cond_1
    return v0
.end method


# virtual methods
.method onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
    .locals 35
    .param p1, "carousel"    # Lcom/google/android/material/carousel/Carousel;
    .param p2, "child"    # Landroid/view/View;

    .line 98
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v1

    int-to-float v2, v1

    .line 100
    .local v2, "availableSpace":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 101
    .local v1, "childLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget v3, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v4, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    int-to-float v11, v3

    .line 103
    .local v11, "childHorizontalMargins":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getSmallSizeMin(Landroid/content/Context;)F

    move-result v3

    add-float v4, v3, v11

    .line 104
    .local v4, "smallChildWidthMin":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getSmallSizeMax(Landroid/content/Context;)F

    move-result v3

    add-float v5, v3, v11

    .line 106
    .local v5, "smallChildWidthMax":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v12, v3

    .line 107
    .local v12, "measuredChildWidth":F
    add-float v3, v12, v11

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 112
    .local v9, "targetLargeChildWidth":F
    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, v12, v3

    add-float/2addr v3, v11

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getSmallSizeMin(Landroid/content/Context;)F

    move-result v6

    add-float/2addr v6, v11

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getSmallSizeMax(Landroid/content/Context;)F

    move-result v7

    add-float/2addr v7, v11

    .line 113
    invoke-static {v3, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    .line 117
    .local v3, "targetSmallChildWidth":F
    add-float v6, v9, v3

    const/high16 v13, 0x40000000    # 2.0f

    div-float v7, v6, v13

    .line 123
    .local v7, "targetMediumChildWidth":F
    sget-object v6, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->SMALL_COUNTS:[I

    .line 124
    .local v6, "smallCounts":[I
    iget-boolean v8, v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->forceCompactArrangement:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS_COMPACT:[I

    goto :goto_0

    :cond_0
    sget-object v8, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS:[I

    .line 127
    .local v8, "mediumCounts":[I
    :goto_0
    nop

    .line 129
    invoke-static {v8}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->maxValue([I)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v7

    sub-float v10, v2, v10

    .line 130
    invoke-static {v6}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->maxValue([I)I

    move-result v14

    int-to-float v14, v14

    mul-float v14, v14, v5

    sub-float v14, v10, v14

    .line 131
    .local v14, "minAvailableLargeSpace":F
    div-float v10, v14, v9

    move/from16 v16, v14

    const/high16 v15, 0x40000000    # 2.0f

    .end local v14    # "minAvailableLargeSpace":F
    .local v16, "minAvailableLargeSpace":F
    float-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    move-object/from16 v17, v1

    move v10, v2

    .end local v1    # "childLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .end local v2    # "availableSpace":F
    .local v10, "availableSpace":F
    .local v17, "childLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int v1, v1

    .line 132
    .local v1, "largeCountMin":I
    div-float v2, v10, v9

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    .line 133
    .local v13, "largeCountMax":I
    sub-int v2, v13, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 134
    .local v2, "largeCounts":[I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    const/high16 v18, 0x40000000    # 2.0f

    array-length v15, v2

    if-ge v14, v15, :cond_1

    .line 135
    sub-int v15, v13, v14

    aput v15, v2, v14

    .line 134
    add-int/lit8 v14, v14, 0x1

    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_1

    .line 138
    .end local v14    # "i":I
    :cond_1
    nop

    .line 139
    move/from16 v34, v10

    move-object v10, v2

    move/from16 v2, v34

    .local v2, "availableSpace":F
    .local v10, "largeCounts":[I
    invoke-static/range {v2 .. v10}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;

    move-result-object v14

    .line 150
    .local v14, "arrangement":Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v0, v15}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getExtraSmallSize(Landroid/content/Context;)F

    move-result v15

    add-float/2addr v15, v11

    .line 152
    .local v15, "extraSmallChildWidth":F
    const/16 v19, 0x0

    .line 153
    .local v19, "start":F
    div-float v20, v15, v18

    sub-float v0, v19, v20

    .line 155
    .local v0, "extraSmallHeadCenterX":F
    move/from16 v20, v1

    .end local v1    # "largeCountMin":I
    .local v20, "largeCountMin":I
    iget v1, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeSize:F

    div-float v1, v1, v18

    add-float v22, v19, v1

    .line 156
    .local v22, "largeStartCenterX":F
    iget v1, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeCount:I

    add-int/lit8 v1, v1, -0x1

    .line 157
    move/from16 v27, v2

    .end local v2    # "availableSpace":F
    .local v27, "availableSpace":F
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeSize:F

    mul-float v1, v1, v2

    add-float v1, v22, v1

    .line 158
    .local v1, "largeEndCenterX":F
    iget v2, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeSize:F

    div-float v2, v2, v18

    add-float/2addr v2, v1

    .line 161
    .end local v19    # "start":F
    .local v2, "start":F
    move/from16 v19, v1

    .end local v1    # "largeEndCenterX":F
    .local v19, "largeEndCenterX":F
    iget v1, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->mediumCount:I

    if-lez v1, :cond_2

    iget v1, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->mediumSize:F

    div-float v1, v1, v18

    add-float/2addr v1, v2

    goto :goto_2

    :cond_2
    move/from16 v1, v19

    .line 162
    .local v1, "mediumCenterX":F
    :goto_2
    move/from16 v21, v2

    .end local v2    # "start":F
    .local v21, "start":F
    iget v2, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->mediumCount:I

    if-lez v2, :cond_3

    iget v2, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->mediumSize:F

    div-float v2, v2, v18

    add-float/2addr v2, v1

    goto :goto_3

    :cond_3
    move/from16 v2, v21

    .line 165
    .end local v21    # "start":F
    .restart local v2    # "start":F
    :goto_3
    move/from16 v28, v2

    .end local v2    # "start":F
    .local v28, "start":F
    iget v2, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->smallCount:I

    if-lez v2, :cond_4

    iget v2, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->smallSize:F

    div-float v2, v2, v18

    add-float v2, v28, v2

    goto :goto_4

    :cond_4
    move v2, v1

    .line 167
    .local v2, "smallStartCenterX":F
    :goto_4
    move/from16 v29, v3

    .end local v3    # "targetSmallChildWidth":F
    .local v29, "targetSmallChildWidth":F
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v18, v15, v18

    add-float v3, v3, v18

    .line 169
    .local v3, "extraSmallTailCenterX":F
    move/from16 v18, v4

    .end local v4    # "smallChildWidthMin":F
    .local v18, "smallChildWidthMin":F
    iget v4, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeSize:F

    .line 170
    invoke-static {v15, v4, v11}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v4

    .line 171
    .local v4, "extraSmallMask":F
    move/from16 v30, v5

    .end local v5    # "smallChildWidthMax":F
    .local v30, "smallChildWidthMax":F
    iget v5, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->smallSize:F

    move-object/from16 v31, v6

    .end local v6    # "smallCounts":[I
    .local v31, "smallCounts":[I
    iget v6, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeSize:F

    .line 172
    invoke-static {v5, v6, v11}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v5

    .line 174
    .local v5, "smallMask":F
    iget v6, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->mediumSize:F

    move/from16 v32, v7

    .end local v7    # "targetMediumChildWidth":F
    .local v32, "targetMediumChildWidth":F
    iget v7, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeSize:F

    .line 175
    invoke-static {v6, v7, v11}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v6

    .line 177
    .local v6, "mediumMask":F
    const/16 v23, 0x0

    .line 179
    .local v23, "largeMask":F
    new-instance v7, Lcom/google/android/material/carousel/KeylineState$Builder;

    move-object/from16 v33, v8

    .end local v8    # "mediumCounts":[I
    .local v33, "mediumCounts":[I
    iget v8, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeSize:F

    invoke-direct {v7, v8}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(F)V

    .line 181
    invoke-virtual {v7, v0, v4, v15}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v21

    iget v7, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeSize:F

    iget v8, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeCount:I

    .line 182
    const/16 v26, 0x1

    move/from16 v24, v7

    move/from16 v25, v8

    invoke-virtual/range {v21 .. v26}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeylineRange(FFFIZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v7

    .line 184
    .local v7, "builder":Lcom/google/android/material/carousel/KeylineState$Builder;
    iget v8, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->mediumCount:I

    if-lez v8, :cond_5

    .line 185
    iget v8, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->mediumSize:F

    invoke-virtual {v7, v1, v6, v8}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 187
    :cond_5
    iget v8, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->smallCount:I

    if-lez v8, :cond_6

    .line 188
    iget v8, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->smallSize:F

    move/from16 v21, v0

    .end local v0    # "extraSmallHeadCenterX":F
    .local v21, "extraSmallHeadCenterX":F
    iget v0, v14, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->smallCount:I

    invoke-virtual {v7, v2, v5, v8, v0}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeylineRange(FFFI)Lcom/google/android/material/carousel/KeylineState$Builder;

    goto :goto_5

    .line 187
    .end local v21    # "extraSmallHeadCenterX":F
    .restart local v0    # "extraSmallHeadCenterX":F
    :cond_6
    move/from16 v21, v0

    .line 191
    .end local v0    # "extraSmallHeadCenterX":F
    .restart local v21    # "extraSmallHeadCenterX":F
    :goto_5
    invoke-virtual {v7, v3, v4, v15}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 192
    invoke-virtual {v7}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0
.end method
