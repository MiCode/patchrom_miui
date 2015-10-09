.class public Landroid/app/AppGlobals;
.super Ljava/lang/Object;
.source "AppGlobals.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitialApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static getInitialPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntCoreSetting(Ljava/lang/String;I)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 58
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 59
    .local v0, "currentActivityThread":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityThread;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result p1

    .line 62
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method
