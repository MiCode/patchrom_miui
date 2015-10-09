.class final Landroid/os/StrictMode$4;
.super Ljava/lang/ThreadLocal;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Landroid/os/StrictMode$AndroidBlockGuardPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1067
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    .locals 2

    .prologue
    .line 1070
    new-instance v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1067
    invoke-virtual {p0}, Landroid/os/StrictMode$4;->initialValue()Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    move-result-object v0

    return-object v0
.end method
