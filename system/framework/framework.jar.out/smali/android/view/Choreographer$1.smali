.class final Landroid/view/Choreographer$1;
.super Ljava/lang/ThreadLocal;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Landroid/view/Choreographer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/view/Choreographer;
    .locals 3

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 95
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 96
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The current thread must have a looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_0
    new-instance v1, Landroid/view/Choreographer;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;Landroid/view/Choreographer$1;)V

    return-object v1
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/view/Choreographer$1;->initialValue()Landroid/view/Choreographer;

    move-result-object v0

    return-object v0
.end method
