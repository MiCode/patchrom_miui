.class Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/StrictMode$AndroidBlockGuardPolicy;

.field final synthetic val$records:Ljava/util/ArrayList;

.field final synthetic val$windowManager:Landroid/view/IWindowManager;


# direct methods
.method constructor <init>(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1232
    iput-object p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->this$0:Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    iput-object p2, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$windowManager:Landroid/view/IWindowManager;

    iput-object p3, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$records:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1234
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1240
    .local v0, "loopFinishTime":J
    iget-object v4, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$windowManager:Landroid/view/IWindowManager;

    if-eqz v4, :cond_0

    .line 1242
    :try_start_0
    iget-object v4, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$windowManager:Landroid/view/IWindowManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_1
    iget-object v4, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$records:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1248
    iget-object v4, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$records:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/StrictMode$ViolationInfo;

    .line 1249
    .local v3, "v":Landroid/os/StrictMode$ViolationInfo;
    add-int/lit8 v4, v2, 0x1

    iput v4, v3, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    .line 1250
    iget-wide v4, v3, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    sub-long v4, v0, v4

    long-to-int v4, v4

    iput v4, v3, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 1252
    iget-object v4, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->this$0:Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v4, v3}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolation(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1247
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1254
    .end local v3    # "v":Landroid/os/StrictMode$ViolationInfo;
    :cond_1
    iget-object v4, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$records:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1255
    return-void

    .line 1243
    .end local v2    # "n":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method
