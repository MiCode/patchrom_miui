.class Landroid/content/pm/RegisteredServicesCache$1;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/RegisteredServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/RegisteredServicesCache;


# direct methods
.method constructor <init>(Landroid/content/pm/RegisteredServicesCache;)V
    .locals 0

    .prologue
    .line 143
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$1;, "Landroid/content/pm/RegisteredServicesCache.1;"
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$1;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$1;, "Landroid/content/pm/RegisteredServicesCache.1;"
    const/4 v2, -0x1

    .line 146
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 147
    .local v0, "uid":I
    if-eq v0, v2, :cond_0

    .line 148
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache$1;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    # invokes: Landroid/content/pm/RegisteredServicesCache;->generateServicesMap(I)V
    invoke-static {v1, v2}, Landroid/content/pm/RegisteredServicesCache;->access$100(Landroid/content/pm/RegisteredServicesCache;I)V

    .line 150
    :cond_0
    return-void
.end method
