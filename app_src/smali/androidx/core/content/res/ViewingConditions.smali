.class final Landroidx/core/content/res/ViewingConditions;
.super Ljava/lang/Object;
.source "ViewingConditions.java"


# static fields
.field static final DEFAULT:Landroidx/core/content/res/ViewingConditions;


# instance fields
.field private final mAw:F

.field private final mC:F

.field private final mFl:F

.field private final mFlRoot:F

.field private final mN:F

.field private final mNbb:F

.field private final mNc:F

.field private final mNcb:F

.field private final mRgbD:[F

.field private final mZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 53
    sget-object v0, Landroidx/core/content/res/CamUtils;->WHITE_POINT_D65:[F

    .line 56
    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Landroidx/core/content/res/CamUtils;->yFromLStar(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x404fd4bbab8b494cL    # 63.66197723675813

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 54
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Landroidx/core/content/res/ViewingConditions;->make([FFFFZ)Landroidx/core/content/res/ViewingConditions;

    move-result-object v0

    sput-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 53
    return-void
.end method

.method private constructor <init>(FFFFFF[FFFF)V
    .locals 0
    .param p1, "n"    # F
    .param p2, "aw"    # F
    .param p3, "nbb"    # F
    .param p4, "ncb"    # F
    .param p5, "c"    # F
    .param p6, "nc"    # F
    .param p7, "rgbD"    # [F
    .param p8, "fl"    # F
    .param p9, "fLRoot"    # F
    .param p10, "z"    # F

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Landroidx/core/content/res/ViewingConditions;->mN:F

    .line 114
    iput p2, p0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    .line 115
    iput p3, p0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    .line 116
    iput p4, p0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    .line 117
    iput p5, p0, Landroidx/core/content/res/ViewingConditions;->mC:F

    .line 118
    iput p6, p0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    .line 119
    iput-object p7, p0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    .line 120
    iput p8, p0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    .line 121
    iput p9, p0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    .line 122
    iput p10, p0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    .line 123
    return-void
.end method

.method static make([FFFFZ)Landroidx/core/content/res/ViewingConditions;
    .locals 31
    .param p0, "whitepoint"    # [F
    .param p1, "adaptingLuminance"    # F
    .param p2, "backgroundLstar"    # F
    .param p3, "surround"    # F
    .param p4, "discountingIlluminant"    # Z

    .line 130
    move/from16 v0, p1

    sget-object v1, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 131
    .local v1, "matrix":[[F
    move-object/from16 v2, p0

    .line 132
    .local v2, "xyz":[F
    const/4 v3, 0x0

    aget v4, v2, v3

    aget-object v5, v1, v3

    aget v5, v5, v3

    mul-float v4, v4, v5

    const/4 v5, 0x1

    aget v6, v2, v5

    aget-object v7, v1, v3

    aget v7, v7, v5

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    const/4 v6, 0x2

    aget v7, v2, v6

    aget-object v8, v1, v3

    aget v8, v8, v6

    mul-float v7, v7, v8

    add-float/2addr v4, v7

    .line 133
    .local v4, "rW":F
    aget v7, v2, v3

    aget-object v8, v1, v5

    aget v8, v8, v3

    mul-float v7, v7, v8

    aget v8, v2, v5

    aget-object v9, v1, v5

    aget v9, v9, v5

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    aget v8, v2, v6

    aget-object v9, v1, v5

    aget v9, v9, v6

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    .line 134
    .local v7, "gW":F
    aget v8, v2, v3

    aget-object v9, v1, v6

    aget v9, v9, v3

    mul-float v8, v8, v9

    aget v9, v2, v5

    aget-object v10, v1, v6

    aget v10, v10, v5

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    aget v9, v2, v6

    aget-object v10, v1, v6

    aget v10, v10, v6

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    .line 137
    .local v8, "bW":F
    const/high16 v9, 0x41200000    # 10.0f

    div-float v10, p3, v9

    const v11, 0x3f4ccccd    # 0.8f

    add-float/2addr v10, v11

    .line 139
    .local v10, "f":F
    float-to-double v12, v10

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    const/16 v16, 0x0

    const v3, 0x3f170a3d    # 0.59f

    cmpl-double v17, v12, v14

    if-ltz v17, :cond_0

    const v11, 0x3f666666    # 0.9f

    sub-float v11, v10, v11

    mul-float v11, v11, v9

    const v9, 0x3f30a3d7    # 0.69f

    invoke-static {v3, v9, v11}, Landroidx/core/content/res/CamUtils;->lerp(FFF)F

    move-result v3

    goto :goto_0

    :cond_0
    sub-float v11, v10, v11

    mul-float v11, v11, v9

    const v9, 0x3f066666    # 0.525f

    invoke-static {v9, v3, v11}, Landroidx/core/content/res/CamUtils;->lerp(FFF)F

    move-result v3

    :goto_0
    move/from16 v22, v3

    .line 142
    .local v22, "c":F
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p4, :cond_1

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    neg-float v9, v0

    const/high16 v11, 0x42280000    # 42.0f

    sub-float/2addr v9, v11

    const/high16 v11, 0x42b80000    # 92.0f

    div-float/2addr v9, v11

    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    double-to-float v9, v11

    const v11, 0x3e8e38e4

    mul-float v9, v9, v11

    sub-float v9, v3, v9

    mul-float v9, v9, v10

    .line 145
    .local v9, "d":F
    :goto_1
    float-to-double v11, v9

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v15, v11, v13

    if-lez v15, :cond_2

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    float-to-double v11, v9

    const-wide/16 v13, 0x0

    cmpg-double v15, v11, v13

    if-gez v15, :cond_3

    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    move v11, v9

    .line 147
    .end local v9    # "d":F
    .local v11, "d":F
    :goto_2
    move/from16 v23, v10

    .line 159
    .local v23, "nc":F
    const/high16 v9, 0x42c80000    # 100.0f

    div-float v12, v9, v4

    mul-float v12, v12, v11

    add-float/2addr v12, v3

    sub-float/2addr v12, v11

    div-float v13, v9, v7

    mul-float v13, v13, v11

    add-float/2addr v13, v3

    sub-float/2addr v13, v11

    div-float/2addr v9, v8

    mul-float v9, v9, v11

    add-float/2addr v9, v3

    sub-float/2addr v9, v11

    const/4 v14, 0x3

    new-array v15, v14, [F

    aput v12, v15, v16

    aput v13, v15, v5

    aput v9, v15, v6

    move-object/from16 v24, v15

    .line 162
    .local v24, "rgbD":[F
    const/high16 v9, 0x40a00000    # 5.0f

    mul-float v9, v9, v0

    add-float/2addr v9, v3

    div-float v9, v3, v9

    .line 163
    .local v9, "k":F
    mul-float v12, v9, v9

    mul-float v12, v12, v9

    mul-float v12, v12, v9

    .line 164
    .local v12, "k4":F
    sub-float/2addr v3, v12

    .line 165
    .local v3, "k4F":F
    mul-float v13, v12, v0

    const v15, 0x3dcccccd    # 0.1f

    mul-float v15, v15, v3

    mul-float v15, v15, v3

    const-wide/high16 v17, 0x4014000000000000L    # 5.0

    const/16 v19, 0x1

    const/16 v20, 0x2

    float-to-double v5, v0

    mul-double v5, v5, v17

    invoke-static {v5, v6}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v15, v15, v5

    add-float/2addr v13, v15

    .line 169
    .local v13, "fl":F
    invoke-static/range {p2 .. p2}, Landroidx/core/content/res/CamUtils;->yFromLStar(F)F

    move-result v5

    aget v6, p0, v19

    div-float/2addr v5, v6

    .line 173
    .local v5, "n":F
    float-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    const v15, 0x3fbd70a4    # 1.48f

    add-float v27, v14, v15

    .line 176
    .local v27, "z":F
    float-to-double v14, v5

    move/from16 v28, v7

    .end local v7    # "gW":F
    .local v28, "gW":F
    const-wide v6, 0x3fc999999999999aL    # 0.2

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x3f39999a    # 0.725f

    div-float v21, v7, v6

    .line 177
    .local v21, "nbb":F
    move/from16 v7, v21

    .line 181
    .local v7, "nbb":F
    .local v21, "ncb":F
    aget v6, v24, v16

    mul-float v6, v6, v13

    mul-float v6, v6, v4

    float-to-double v14, v6

    const-wide/high16 v25, 0x4059000000000000L    # 100.0

    div-double v14, v14, v25

    move-object/from16 v29, v1

    .end local v1    # "matrix":[[F
    .local v29, "matrix":[[F
    const-wide v0, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v14, v14

    aget v6, v24, v19

    mul-float v6, v6, v13

    mul-float v6, v6, v28

    float-to-double v0, v6

    div-double v0, v0, v25

    .line 182
    move-object v15, v2

    move/from16 v30, v3

    const-wide v2, 0x3fdae147ae147ae1L    # 0.42

    .end local v2    # "xyz":[F
    .end local v3    # "k4F":F
    .local v15, "xyz":[F
    .local v30, "k4F":F
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aget v1, v24, v20

    mul-float v1, v1, v13

    mul-float v1, v1, v8

    move/from16 v18, v0

    float-to-double v0, v1

    div-double v0, v0, v25

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v6, 0x3

    new-array v1, v6, [F

    aput v14, v1, v16

    aput v18, v1, v19

    aput v0, v1, v20

    .line 185
    .local v1, "rgbAFactors":[F
    aget v0, v1, v16

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v0, v0, v2

    aget v3, v1, v16

    const v14, 0x41d90a3d    # 27.13f

    add-float/2addr v3, v14

    div-float/2addr v0, v3

    aget v3, v1, v19

    mul-float v3, v3, v2

    aget v17, v1, v19

    add-float v17, v17, v14

    div-float v3, v3, v17

    aget v17, v1, v20

    mul-float v17, v17, v2

    aget v2, v1, v20

    add-float/2addr v2, v14

    div-float v17, v17, v2

    const/4 v6, 0x3

    new-array v2, v6, [F

    aput v0, v2, v16

    aput v3, v2, v19

    aput v17, v2, v20

    .line 189
    .local v2, "rgbA":[F
    const/high16 v0, 0x40000000    # 2.0f

    aget v3, v2, v16

    mul-float v3, v3, v0

    aget v0, v2, v19

    add-float/2addr v3, v0

    const v0, 0x3d4ccccd    # 0.05f

    aget v6, v2, v20

    mul-float v6, v6, v0

    add-float/2addr v3, v6

    mul-float v19, v3, v7

    .line 191
    .local v19, "aw":F
    new-instance v17, Landroidx/core/content/res/ViewingConditions;

    move-object v3, v1

    .end local v1    # "rgbAFactors":[F
    .local v3, "rgbAFactors":[F
    float-to-double v0, v13

    move-object v6, v2

    move-object v14, v3

    .end local v2    # "rgbA":[F
    .end local v3    # "rgbAFactors":[F
    .local v6, "rgbA":[F
    .local v14, "rgbAFactors":[F
    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v18, v5

    move/from16 v20, v7

    move/from16 v25, v13

    .end local v5    # "n":F
    .end local v7    # "nbb":F
    .end local v13    # "fl":F
    .local v18, "n":F
    .local v20, "nbb":F
    .local v25, "fl":F
    invoke-direct/range {v17 .. v27}, Landroidx/core/content/res/ViewingConditions;-><init>(FFFFFF[FFFF)V

    return-object v17
.end method


# virtual methods
.method getAw()F
    .locals 1

    .line 71
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    return v0
.end method

.method getC()F
    .locals 1

    .line 87
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mC:F

    return v0
.end method

.method getFl()F
    .locals 1

    .line 100
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    return v0
.end method

.method getFlRoot()F
    .locals 1

    .line 104
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    return v0
.end method

.method getN()F
    .locals 1

    .line 75
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mN:F

    return v0
.end method

.method getNbb()F
    .locals 1

    .line 79
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    return v0
.end method

.method getNc()F
    .locals 1

    .line 91
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    return v0
.end method

.method getNcb()F
    .locals 1

    .line 83
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    return v0
.end method

.method getRgbD()[F
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    return-object v0
.end method

.method getZ()F
    .locals 1

    .line 108
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    return v0
.end method
