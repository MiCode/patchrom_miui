.class Landroid/content/pm/RegisteredServicesCache$2;
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
    .line 153
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$2;, "Landroid/content/pm/RegisteredServicesCache.2;"
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$2;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 157
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$2;, "Landroid/content/pm/RegisteredServicesCache.2;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache$2;->this$0:Landroid/content/pm/RegisteredServicesCache;

    const/4 v1, 0x0

    # invokes: Landroid/content/pm/RegisteredServicesCache;->generateServicesMap(I)V
    invoke-static {v0, v1}, Landroid/content/pm/RegisteredServicesCache;->access$100(Landroid/content/pm/RegisteredServicesCache;I)V

    .line 158
    return-void
.end method
