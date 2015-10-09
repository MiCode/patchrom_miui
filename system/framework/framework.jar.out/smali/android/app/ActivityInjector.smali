.class Landroid/app/ActivityInjector;
.super Ljava/lang/Object;
.source "ActivityInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAccessControl(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 11
    const-string/jumbo v1, "security"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    .line 12
    .local v0, "securityManager":Lmiui/security/SecurityManager;
    invoke-virtual {v0, p0}, Lmiui/security/SecurityManager;->checkAccessControl(Landroid/app/Activity;)V

    .line 13
    return-void
.end method

.method public static showHighPerformanceDialog(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 16
    invoke-static {p0}, Lmiui/content/pm/ExtraPackageManager;->showHighPerformanceDialog(Landroid/app/Activity;)V

    .line 17
    return-void
.end method
