.class Lcom/android/settings/EqualizerView$Biquad;
.super Ljava/lang/Object;
.source "EqualizerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EqualizerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Biquad"
.end annotation


# instance fields
.field private a0:Lcom/android/settings/EqualizerView$Complex;

.field private a1:Lcom/android/settings/EqualizerView$Complex;

.field private a2:Lcom/android/settings/EqualizerView$Complex;

.field private b0:Lcom/android/settings/EqualizerView$Complex;

.field private b1:Lcom/android/settings/EqualizerView$Complex;

.field private b2:Lcom/android/settings/EqualizerView$Complex;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluateTransfer(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;
    .locals 5
    .parameter "z"

    .prologue
    .line 226
    invoke-virtual {p1, p1}, Lcom/android/settings/EqualizerView$Complex;->mul(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v2

    .line 227
    .local v2, zSquared:Lcom/android/settings/EqualizerView$Complex;
    iget-object v3, p0, Lcom/android/settings/EqualizerView$Biquad;->b0:Lcom/android/settings/EqualizerView$Complex;

    iget-object v4, p0, Lcom/android/settings/EqualizerView$Biquad;->b1:Lcom/android/settings/EqualizerView$Complex;

    invoke-virtual {v4, p1}, Lcom/android/settings/EqualizerView$Complex;->div(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EqualizerView$Complex;->add(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/EqualizerView$Biquad;->b2:Lcom/android/settings/EqualizerView$Complex;

    invoke-virtual {v4, v2}, Lcom/android/settings/EqualizerView$Complex;->div(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EqualizerView$Complex;->add(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v1

    .line 228
    .local v1, nom:Lcom/android/settings/EqualizerView$Complex;
    iget-object v3, p0, Lcom/android/settings/EqualizerView$Biquad;->a0:Lcom/android/settings/EqualizerView$Complex;

    iget-object v4, p0, Lcom/android/settings/EqualizerView$Biquad;->a1:Lcom/android/settings/EqualizerView$Complex;

    invoke-virtual {v4, p1}, Lcom/android/settings/EqualizerView$Complex;->div(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EqualizerView$Complex;->add(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/EqualizerView$Biquad;->a2:Lcom/android/settings/EqualizerView$Complex;

    invoke-virtual {v4, v2}, Lcom/android/settings/EqualizerView$Complex;->div(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EqualizerView$Complex;->add(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v0

    .line 229
    .local v0, den:Lcom/android/settings/EqualizerView$Complex;
    invoke-virtual {v1, v0}, Lcom/android/settings/EqualizerView$Complex;->div(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v3

    return-object v3
.end method

.method protected setHighShelf(FFFF)V
    .locals 16
    .parameter "centerFrequency"
    .parameter "samplingFrequency"
    .parameter "dbGain"
    .parameter "slope"

    .prologue
    .line 213
    const-wide v7, 0x401921fb54442d18L

    move/from16 v0, p1

    float-to-double v9, v0

    mul-double/2addr v7, v9

    move/from16 v0, p2

    float-to-double v9, v0

    div-double v5, v7, v9

    .line 214
    .local v5, w0:D
    const-wide/high16 v7, 0x4024

    const/high16 v9, 0x4220

    div-float v9, p3, v9

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 215
    .local v1, A:D
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x3ff0

    div-double/2addr v9, v1

    add-double/2addr v9, v1

    const/high16 v11, 0x3f80

    div-float v11, v11, p4

    const/high16 v12, 0x3f80

    sub-float/2addr v11, v12

    float-to-double v11, v11

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x4000

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    mul-double v3, v7, v9

    .line 217
    .local v3, alpha:D
    new-instance v7, Lcom/android/settings/EqualizerView$Complex;

    const-wide/high16 v8, 0x3ff0

    add-double/2addr v8, v1

    const-wide/high16 v10, 0x3ff0

    sub-double v10, v1, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    mul-double/2addr v10, v3

    add-double/2addr v8, v10

    mul-double/2addr v8, v1

    double-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings/EqualizerView$Biquad;->b0:Lcom/android/settings/EqualizerView$Complex;

    .line 218
    new-instance v7, Lcom/android/settings/EqualizerView$Complex;

    const-wide/high16 v8, -0x4000

    mul-double/2addr v8, v1

    const-wide/high16 v10, 0x3ff0

    sub-double v10, v1, v10

    const-wide/high16 v12, 0x3ff0

    add-double/2addr v12, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings/EqualizerView$Biquad;->b1:Lcom/android/settings/EqualizerView$Complex;

    .line 219
    new-instance v7, Lcom/android/settings/EqualizerView$Complex;

    const-wide/high16 v8, 0x3ff0

    add-double/2addr v8, v1

    const-wide/high16 v10, 0x3ff0

    sub-double v10, v1, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    mul-double/2addr v10, v3

    sub-double/2addr v8, v10

    mul-double/2addr v8, v1

    double-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings/EqualizerView$Biquad;->b2:Lcom/android/settings/EqualizerView$Complex;

    .line 220
    new-instance v7, Lcom/android/settings/EqualizerView$Complex;

    const-wide/high16 v8, 0x3ff0

    add-double/2addr v8, v1

    const-wide/high16 v10, 0x3ff0

    sub-double v10, v1, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    mul-double/2addr v10, v3

    add-double/2addr v8, v10

    double-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings/EqualizerView$Biquad;->a0:Lcom/android/settings/EqualizerView$Complex;

    .line 221
    new-instance v7, Lcom/android/settings/EqualizerView$Complex;

    const-wide/high16 v8, 0x4000

    const-wide/high16 v10, 0x3ff0

    sub-double v10, v1, v10

    const-wide/high16 v12, 0x3ff0

    add-double/2addr v12, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings/EqualizerView$Biquad;->a1:Lcom/android/settings/EqualizerView$Complex;

    .line 222
    new-instance v7, Lcom/android/settings/EqualizerView$Complex;

    const-wide/high16 v8, 0x3ff0

    add-double/2addr v8, v1

    const-wide/high16 v10, 0x3ff0

    sub-double v10, v1, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    mul-double/2addr v10, v3

    sub-double/2addr v8, v10

    double-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings/EqualizerView$Biquad;->a2:Lcom/android/settings/EqualizerView$Complex;

    .line 223
    return-void
.end method
