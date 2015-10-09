.class Landroid/os/StrictMode$AndroidCloseGuardReporter;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Ldalvik/system/CloseGuard$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidCloseGuardReporter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/StrictMode$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/StrictMode$1;

    .prologue
    .line 1422
    invoke-direct {p0}, Landroid/os/StrictMode$AndroidCloseGuardReporter;-><init>()V

    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "allocationSite"    # Ljava/lang/Throwable;

    .prologue
    .line 1424
    invoke-static {p1, p2}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1425
    return-void
.end method
