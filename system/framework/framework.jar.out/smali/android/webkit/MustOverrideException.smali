.class Landroid/webkit/MustOverrideException;
.super Ljava/lang/RuntimeException;
.source "MustOverrideException.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "abstract function called: must be overriden!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method
