.class public Landroid/hardware/camera2/utils/UncheckedThrow;
.super Ljava/lang/Object;
.source "UncheckedThrow.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static throwAnyException(Ljava/lang/Exception;)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 33
    invoke-static {p0}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyImpl(Ljava/lang/Exception;)V

    .line 34
    return-void
.end method

.method private static throwAnyImpl(Ljava/lang/Exception;)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Exception;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    throw p0
.end method
