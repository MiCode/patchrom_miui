.class Landroid/app/ActivityThread$2;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread;->attach(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0

    .prologue
    .line 4892
    iput-object p1, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 4895
    iget-object v0, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    # getter for: Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;
    invoke-static {v0}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v1

    monitor-enter v1

    .line 4899
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    # getter for: Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;
    invoke-static {v0}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4902
    iget-object v0, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4904
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iput-object p1, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 4906
    iget-object v0, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x76

    # invokes: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v2, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 4909
    :cond_1
    monitor-exit v1

    .line 4910
    return-void

    .line 4909
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 4913
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 4916
    return-void
.end method
