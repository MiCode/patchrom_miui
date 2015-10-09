.class public Landroid/ddm/DdmRegister;
.super Ljava/lang/Object;
.source "DdmRegister.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerHandlers()V
    .locals 0

    .prologue
    .line 48
    invoke-static {}, Landroid/ddm/DdmHandleHello;->register()V

    .line 49
    invoke-static {}, Landroid/ddm/DdmHandleThread;->register()V

    .line 50
    invoke-static {}, Landroid/ddm/DdmHandleHeap;->register()V

    .line 51
    invoke-static {}, Landroid/ddm/DdmHandleNativeHeap;->register()V

    .line 52
    invoke-static {}, Landroid/ddm/DdmHandleProfiling;->register()V

    .line 53
    invoke-static {}, Landroid/ddm/DdmHandleExit;->register()V

    .line 54
    invoke-static {}, Landroid/ddm/DdmHandleViewDebug;->register()V

    .line 56
    invoke-static {}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registrationComplete()V

    .line 57
    return-void
.end method
