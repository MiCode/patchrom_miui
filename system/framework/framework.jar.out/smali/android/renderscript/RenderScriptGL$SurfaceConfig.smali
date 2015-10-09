.class public Landroid/renderscript/RenderScriptGL$SurfaceConfig;
.super Ljava/lang/Object;
.source "RenderScriptGL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScriptGL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceConfig"
.end annotation


# instance fields
.field mAlphaMin:I

.field mAlphaPref:I

.field mColorMin:I

.field mColorPref:I

.field mDepthMin:I

.field mDepthPref:I

.field mSamplesMin:I

.field mSamplesPref:I

.field mSamplesQ:F

.field mStencilMin:I

.field mStencilPref:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    .line 61
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    .line 62
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    .line 63
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    .line 64
    iput v2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    .line 65
    iput v2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    .line 66
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    .line 67
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    .line 68
    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    .line 69
    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V
    .locals 3
    .param p1, "sc"    # Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    .line 61
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    .line 62
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    .line 63
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    .line 64
    iput v2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    .line 65
    iput v2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    .line 66
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    .line 67
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    .line 68
    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    .line 69
    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    .line 82
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    .line 83
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    .line 84
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    .line 85
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    .line 86
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    .line 87
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    .line 88
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    .line 89
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    .line 90
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    .line 91
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    .line 92
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    .line 93
    return-void
.end method

.method private validateRange(IIII)V
    .locals 2
    .param p1, "umin"    # I
    .param p2, "upref"    # I
    .param p3, "rmin"    # I
    .param p4, "rmax"    # I

    .prologue
    .line 96
    if-lt p1, p3, :cond_0

    if-le p1, p4, :cond_1

    .line 97
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Minimum value provided out of range."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    if-ge p2, p1, :cond_2

    .line 100
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "preferred must be >= Minimum."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    return-void
.end method


# virtual methods
.method public setAlpha(II)V
    .locals 2
    .param p1, "minimum"    # I
    .param p2, "preferred"    # I

    .prologue
    .line 127
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 128
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    .line 129
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    .line 130
    return-void
.end method

.method public setColor(II)V
    .locals 2
    .param p1, "minimum"    # I
    .param p2, "preferred"    # I

    .prologue
    .line 113
    const/4 v0, 0x5

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 114
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    .line 115
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    .line 116
    return-void
.end method

.method public setDepth(II)V
    .locals 2
    .param p1, "minimum"    # I
    .param p2, "preferred"    # I

    .prologue
    .line 143
    const/4 v0, 0x0

    const/16 v1, 0x18

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 144
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    .line 145
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    .line 146
    return-void
.end method

.method public setSamples(IIF)V
    .locals 2
    .param p1, "minimum"    # I
    .param p2, "preferred"    # I
    .param p3, "Q"    # F

    .prologue
    .line 160
    const/4 v0, 0x1

    const/16 v1, 0x20

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 161
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Quality out of 0-1 range."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    .line 165
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    .line 166
    iput p3, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    .line 167
    return-void
.end method
