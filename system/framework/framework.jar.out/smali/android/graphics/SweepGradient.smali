.class public Landroid/graphics/SweepGradient;
.super Landroid/graphics/Shader;
.source "SweepGradient.java"


# static fields
.field private static final TYPE_COLORS_AND_POSITIONS:I = 0x1

.field private static final TYPE_COLOR_START_AND_COLOR_END:I = 0x2


# instance fields
.field private mColor0:I

.field private mColor1:I

.field private mColors:[I

.field private mCx:F

.field private mCy:F

.field private mPositions:[F

.field private mType:I


# direct methods
.method public constructor <init>(FFII)V
    .locals 1
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "color0"    # I
    .param p4, "color1"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 78
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/SweepGradient;->mType:I

    .line 79
    iput p1, p0, Landroid/graphics/SweepGradient;->mCx:F

    .line 80
    iput p2, p0, Landroid/graphics/SweepGradient;->mCy:F

    .line 81
    iput p3, p0, Landroid/graphics/SweepGradient;->mColor0:I

    .line 82
    iput p4, p0, Landroid/graphics/SweepGradient;->mColor1:I

    .line 83
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/SweepGradient;->nativeCreate2(FFII)I

    move-result v0

    iput v0, p0, Landroid/graphics/SweepGradient;->native_instance:I

    .line 84
    iget v0, p0, Landroid/graphics/SweepGradient;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/SweepGradient;->nativePostCreate2(IFFII)I

    move-result v0

    iput v0, p0, Landroid/graphics/SweepGradient;->native_shader:I

    .line 85
    return-void
.end method

.method public constructor <init>(FF[I[F)V
    .locals 2
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "colors"    # [I
    .param p4, "positions"    # [F

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 53
    array-length v0, p3

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "needs >= 2 number of colors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p3

    array-length v1, p4

    if-eq v0, v1, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color and position arrays must be of equal length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/SweepGradient;->mType:I

    .line 61
    iput p1, p0, Landroid/graphics/SweepGradient;->mCx:F

    .line 62
    iput p2, p0, Landroid/graphics/SweepGradient;->mCy:F

    .line 63
    iput-object p3, p0, Landroid/graphics/SweepGradient;->mColors:[I

    .line 64
    iput-object p4, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    .line 65
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/SweepGradient;->nativeCreate1(FF[I[F)I

    move-result v0

    iput v0, p0, Landroid/graphics/SweepGradient;->native_instance:I

    .line 66
    iget v0, p0, Landroid/graphics/SweepGradient;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/SweepGradient;->nativePostCreate1(IFF[I[F)I

    move-result v0

    iput v0, p0, Landroid/graphics/SweepGradient;->native_shader:I

    .line 67
    return-void
.end method

.method private static native nativeCreate1(FF[I[F)I
.end method

.method private static native nativeCreate2(FFII)I
.end method

.method private static native nativePostCreate1(IFF[I[F)I
.end method

.method private static native nativePostCreate2(IFFII)I
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 5

    .prologue
    .line 93
    iget v1, p0, Landroid/graphics/SweepGradient;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SweepGradient should be created with either colors and positions or start color and end color"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :pswitch_0
    new-instance v0, Landroid/graphics/SweepGradient;

    iget v3, p0, Landroid/graphics/SweepGradient;->mCx:F

    iget v4, p0, Landroid/graphics/SweepGradient;->mCy:F

    iget-object v1, p0, Landroid/graphics/SweepGradient;->mColors:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget-object v2, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    :goto_0
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 105
    .local v0, "copy":Landroid/graphics/SweepGradient;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/graphics/SweepGradient;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 106
    return-object v0

    .line 95
    .end local v0    # "copy":Landroid/graphics/SweepGradient;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 99
    :pswitch_1
    new-instance v0, Landroid/graphics/SweepGradient;

    iget v1, p0, Landroid/graphics/SweepGradient;->mCx:F

    iget v2, p0, Landroid/graphics/SweepGradient;->mCy:F

    iget v3, p0, Landroid/graphics/SweepGradient;->mColor0:I

    iget v4, p0, Landroid/graphics/SweepGradient;->mColor1:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    .line 100
    .restart local v0    # "copy":Landroid/graphics/SweepGradient;
    goto :goto_1

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
