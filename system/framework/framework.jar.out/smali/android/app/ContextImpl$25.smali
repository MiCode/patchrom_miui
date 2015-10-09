.class final Landroid/app/ContextImpl$25;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 8
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 455
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v0

    .line 456
    .local v0, "outerContext":Landroid/content/Context;
    new-instance v1, Landroid/app/NotificationManager;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget v5, Lcom/android/internal/R$style;->Theme_Dialog:I

    sget v6, Lcom/android/internal/R$style;->Theme_Holo_Dialog:I

    sget v7, Lcom/android/internal/R$style;->Theme_DeviceDefault_Dialog:I

    invoke-static {v3, v4, v5, v6, v7}, Landroid/content/res/Resources;->selectSystemTheme(IIIII)I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v3, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/NotificationManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v1
.end method
