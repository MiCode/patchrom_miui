.class public Landroid/opengl/GLU;
.super Ljava/lang/Object;
.source "GLU.java"


# static fields
.field private static final sScratch:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    const/16 v0, 0x20

    new-array v0, v0, [F

    sput-object v0, Landroid/opengl/GLU;->sScratch:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gluErrorString(I)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # I

    .prologue
    .line 36
    sparse-switch p0, :sswitch_data_0

    .line 52
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 38
    :sswitch_0
    const-string/jumbo v0, "no error"

    goto :goto_0

    .line 40
    :sswitch_1
    const-string v0, "invalid enum"

    goto :goto_0

    .line 42
    :sswitch_2
    const-string v0, "invalid value"

    goto :goto_0

    .line 44
    :sswitch_3
    const-string v0, "invalid operation"

    goto :goto_0

    .line 46
    :sswitch_4
    const-string/jumbo v0, "stack overflow"

    goto :goto_0

    .line 48
    :sswitch_5
    const-string/jumbo v0, "stack underflow"

    goto :goto_0

    .line 50
    :sswitch_6
    const-string/jumbo v0, "out of memory"

    goto :goto_0

    .line 36
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x500 -> :sswitch_1
        0x501 -> :sswitch_2
        0x502 -> :sswitch_3
        0x503 -> :sswitch_4
        0x504 -> :sswitch_5
        0x505 -> :sswitch_6
    .end sparse-switch
.end method

.method public static gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V
    .locals 11
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "eyeX"    # F
    .param p2, "eyeY"    # F
    .param p3, "eyeZ"    # F
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F
    .param p6, "centerZ"    # F
    .param p7, "upX"    # F
    .param p8, "upY"    # F
    .param p9, "upZ"    # F

    .prologue
    .line 75
    sget-object v0, Landroid/opengl/GLU;->sScratch:[F

    .line 76
    .local v0, "scratch":[F
    monitor-enter v0

    .line 77
    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    :try_start_0
    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 79
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 7
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F

    .prologue
    .line 94
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 95
    return-void
.end method

.method public static gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 9
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "fovy"    # F
    .param p2, "aspect"    # F
    .param p3, "zNear"    # F
    .param p4, "zFar"    # F

    .prologue
    .line 113
    float-to-double v5, p1

    const-wide v7, 0x3f81df46a2529d39L    # 0.008726646259971648

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v0, v5

    mul-float v4, p3, v0

    .line 114
    .local v4, "top":F
    neg-float v3, v4

    .line 115
    .local v3, "bottom":F
    mul-float v1, v3, p2

    .line 116
    .local v1, "left":F
    mul-float v2, v4, p2

    .local v2, "right":F
    move-object v0, p0

    move v5, p3

    move v6, p4

    .line 117
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 118
    return-void
.end method

.method public static gluProject(FFF[FI[FI[II[FI)I
    .locals 11
    .param p0, "objX"    # F
    .param p1, "objY"    # F
    .param p2, "objZ"    # F
    .param p3, "model"    # [F
    .param p4, "modelOffset"    # I
    .param p5, "project"    # [F
    .param p6, "projectOffset"    # I
    .param p7, "view"    # [I
    .param p8, "viewOffset"    # I
    .param p9, "win"    # [F
    .param p10, "winOffset"    # I

    .prologue
    .line 150
    sget-object v0, Landroid/opengl/GLU;->sScratch:[F

    .line 151
    .local v0, "scratch":[F
    monitor-enter v0

    .line 152
    const/4 v6, 0x0

    .line 153
    .local v6, "M_OFFSET":I
    const/16 v8, 0x10

    .line 154
    .local v8, "V_OFFSET":I
    const/16 v7, 0x14

    .line 155
    .local v7, "V2_OFFSET":I
    const/4 v1, 0x0

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object v4, p3

    move v5, p4

    :try_start_0
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 158
    const/16 v1, 0x10

    aput p0, v0, v1

    .line 159
    const/16 v1, 0x11

    aput p1, v0, v1

    .line 160
    const/16 v1, 0x12

    aput p2, v0, v1

    .line 161
    const/16 v1, 0x13

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 163
    const/16 v1, 0x14

    const/4 v3, 0x0

    const/16 v5, 0x10

    move-object v2, v0

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 166
    const/16 v1, 0x17

    aget v10, v0, v1

    .line 167
    .local v10, "w":F
    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-nez v1, :cond_0

    .line 168
    const/4 v1, 0x0

    monitor-exit v0

    .line 183
    :goto_0
    return v1

    .line 171
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    div-float v9, v1, v10

    .line 173
    .local v9, "rw":F
    aget v1, p7, p8

    int-to-float v1, v1

    add-int/lit8 v2, p8, 0x2

    aget v2, p7, v2

    int-to-float v2, v2

    const/16 v3, 0x14

    aget v3, v0, v3

    mul-float/2addr v3, v9

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p9, p10

    .line 177
    add-int/lit8 v1, p10, 0x1

    add-int/lit8 v2, p8, 0x1

    aget v2, p7, v2

    int-to-float v2, v2

    add-int/lit8 v3, p8, 0x3

    aget v3, p7, v3

    int-to-float v3, v3

    const/16 v4, 0x15

    aget v4, v0, v4

    mul-float/2addr v4, v9

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p9, v1

    .line 180
    add-int/lit8 v1, p10, 0x2

    const/16 v2, 0x16

    aget v2, v0, v2

    mul-float/2addr v2, v9

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    aput v2, p9, v1

    .line 181
    monitor-exit v0

    .line 183
    const/4 v1, 0x1

    goto :goto_0

    .line 181
    .end local v9    # "rw":F
    .end local v10    # "w":F
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static gluUnProject(FFF[FI[FI[II[FI)I
    .locals 10
    .param p0, "winX"    # F
    .param p1, "winY"    # F
    .param p2, "winZ"    # F
    .param p3, "model"    # [F
    .param p4, "modelOffset"    # I
    .param p5, "project"    # [F
    .param p6, "projectOffset"    # I
    .param p7, "view"    # [I
    .param p8, "viewOffset"    # I
    .param p9, "obj"    # [F
    .param p10, "objOffset"    # I

    .prologue
    .line 216
    sget-object v0, Landroid/opengl/GLU;->sScratch:[F

    .line 217
    .local v0, "scratch":[F
    monitor-enter v0

    .line 218
    const/4 v8, 0x0

    .line 219
    .local v8, "PM_OFFSET":I
    const/16 v7, 0x10

    .line 220
    .local v7, "INVPM_OFFSET":I
    const/4 v9, 0x0

    .line 221
    .local v9, "V_OFFSET":I
    const/4 v1, 0x0

    move-object v2, p5

    move/from16 v3, p6

    move-object v4, p3

    move v5, p4

    :try_start_0
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 224
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v0, v1, v0, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    const/4 v1, 0x0

    monitor-exit v0

    .line 241
    :goto_0
    return v1

    .line 228
    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    add-int/lit8 v3, p8, 0x0

    aget v3, p7, v3

    int-to-float v3, v3

    sub-float v3, p0, v3

    mul-float/2addr v2, v3

    add-int/lit8 v3, p8, 0x2

    aget v3, p7, v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 231
    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    add-int/lit8 v3, p8, 0x1

    aget v3, p7, v3

    int-to-float v3, v3

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    add-int/lit8 v3, p8, 0x3

    aget v3, p7, v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 234
    const/4 v1, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 235
    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 237
    const/16 v4, 0x10

    const/4 v6, 0x0

    move-object/from16 v1, p9

    move/from16 v2, p10

    move-object v3, v0

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 239
    monitor-exit v0

    .line 241
    const/4 v1, 0x1

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
