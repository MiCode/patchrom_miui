.class public abstract Landroid/opengl/ManagedEGLContext;
.super Ljava/lang/Object;
.source "ManagedEGLContext.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ManagedEGLContext"

.field static final sActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/opengl/ManagedEGLContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mContext:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/opengl/ManagedEGLContext;->sActive:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 2
    .param p1, "context"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/opengl/ManagedEGLContext;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 61
    sget-object v1, Landroid/opengl/ManagedEGLContext;->sActive:Ljava/util/ArrayList;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Landroid/opengl/ManagedEGLContext;->sActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static doTerminate()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 100
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq v5, v6, :cond_0

    .line 101
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Called on wrong thread"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 104
    :cond_0
    sget-object v5, Landroid/opengl/ManagedEGLContext;->sActive:Ljava/util/ArrayList;

    monitor-enter v5

    .line 107
    :try_start_0
    sget-object v6, Landroid/opengl/ManagedEGLContext;->sActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 108
    monitor-exit v5

    .line 135
    .local v1, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    .local v2, "egl":Ljavax/microedition/khronos/egl/EGL10;
    :goto_0
    return v4

    .line 113
    .end local v1    # "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    .end local v2    # "egl":Ljavax/microedition/khronos/egl/EGL10;
    :cond_1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    .line 114
    .restart local v2    # "egl":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 116
    .restart local v1    # "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v1, v6, :cond_2

    .line 117
    const-string v6, "ManagedEGLContext"

    const-string v7, "doTerminate failed: no display"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    monitor-exit v5

    goto :goto_0

    .line 129
    .end local v1    # "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 121
    .restart local v1    # "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    :cond_2
    :try_start_1
    invoke-static {v1}, Lcom/google/android/gles_jni/EGLImpl;->getInitCount(Ljavax/microedition/khronos/egl/EGLDisplay;)I

    move-result v6

    sget-object v7, Landroid/opengl/ManagedEGLContext;->sActive:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 122
    const-string v6, "ManagedEGLContext"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doTerminate failed: EGL count is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/google/android/gles_jni/EGLImpl;->getInitCount(Ljavax/microedition/khronos/egl/EGLDisplay;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but managed count is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/opengl/ManagedEGLContext;->sActive:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    monitor-exit v5

    goto :goto_0

    .line 127
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    sget-object v4, Landroid/opengl/ManagedEGLContext;->sActive:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .local v0, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/opengl/ManagedEGLContext;>;"
    sget-object v4, Landroid/opengl/ManagedEGLContext;->sActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 129
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 132
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/opengl/ManagedEGLContext;

    invoke-virtual {v4}, Landroid/opengl/ManagedEGLContext;->execTerminate()V

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 135
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method execTerminate()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/opengl/ManagedEGLContext;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p0, v0}, Landroid/opengl/ManagedEGLContext;->onTerminate(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 85
    return-void
.end method

.method public getContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/opengl/ManagedEGLContext;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public abstract onTerminate(Ljavax/microedition/khronos/egl/EGLContext;)V
.end method

.method public terminate()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/opengl/ManagedEGLContext;->execTerminate()V

    .line 81
    return-void
.end method
