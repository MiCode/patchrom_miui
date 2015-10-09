.class public Landroid/graphics/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Shader$TileMode;
    }
.end annotation


# instance fields
.field private mLocalMatrix:Landroid/graphics/Matrix;

.field public native_instance:I

.field public native_shader:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static native nativeDestructor(II)V
.end method

.method private static native nativeSetLocalMatrix(III)V
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Landroid/graphics/Shader;

    invoke-direct {v0}, Landroid/graphics/Shader;-><init>()V

    .line 98
    .local v0, "copy":Landroid/graphics/Shader;
    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 99
    return-object v0
.end method

.method protected copyLocalMatrix(Landroid/graphics/Shader;)V
    .locals 2
    .param p1, "dest"    # Landroid/graphics/Shader;

    .prologue
    .line 106
    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_0

    .line 107
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 108
    .local v0, "lm":Landroid/graphics/Matrix;
    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 109
    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 113
    .end local v0    # "lm":Landroid/graphics/Matrix;
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget v0, p0, Landroid/graphics/Shader;->native_instance:I

    iget v1, p0, Landroid/graphics/Shader;->native_shader:I

    invoke-static {v0, v1}, Landroid/graphics/Shader;->nativeDestructor(II)V

    .line 91
    return-void

    .line 89
    :catchall_0
    move-exception v0

    iget v1, p0, Landroid/graphics/Shader;->native_instance:I

    iget v2, p0, Landroid/graphics/Shader;->native_shader:I

    invoke-static {v1, v2}, Landroid/graphics/Shader;->nativeDestructor(II)V

    throw v0
.end method

.method public getLocalMatrix(Landroid/graphics/Matrix;)Z
    .locals 2
    .param p1, "localM"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 69
    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 71
    :cond_0
    return v0
.end method

.method public setLocalMatrix(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "localM"    # Landroid/graphics/Matrix;

    .prologue
    .line 80
    iput-object p1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 81
    iget v1, p0, Landroid/graphics/Shader;->native_instance:I

    iget v2, p0, Landroid/graphics/Shader;->native_shader:I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/graphics/Shader;->nativeSetLocalMatrix(III)V

    .line 83
    return-void

    .line 81
    :cond_0
    iget v0, p1, Landroid/graphics/Matrix;->native_instance:I

    goto :goto_0
.end method
