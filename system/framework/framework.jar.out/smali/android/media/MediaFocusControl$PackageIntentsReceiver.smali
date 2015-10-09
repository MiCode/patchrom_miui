.class Landroid/media/MediaFocusControl$PackageIntentsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageIntentsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method private constructor <init>(Landroid/media/MediaFocusControl;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Landroid/media/MediaFocusControl$PackageIntentsReceiver;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaFocusControl;Landroid/media/MediaFocusControl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/MediaFocusControl;
    .param p2, "x1"    # Landroid/media/MediaFocusControl$1;

    .prologue
    .line 911
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl$PackageIntentsReceiver;-><init>(Landroid/media/MediaFocusControl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 914
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 917
    :cond_0
    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 919
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 920
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 921
    iget-object v2, p0, Landroid/media/MediaFocusControl$PackageIntentsReceiver;->this$0:Landroid/media/MediaFocusControl;

    const/4 v3, 0x1

    # invokes: Landroid/media/MediaFocusControl;->cleanupMediaButtonReceiverForPackage(Ljava/lang/String;Z)V
    invoke-static {v2, v1, v3}, Landroid/media/MediaFocusControl;->access$2700(Landroid/media/MediaFocusControl;Ljava/lang/String;Z)V

    .line 931
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 924
    :cond_2
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 926
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 927
    .restart local v1    # "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 928
    iget-object v2, p0, Landroid/media/MediaFocusControl$PackageIntentsReceiver;->this$0:Landroid/media/MediaFocusControl;

    # invokes: Landroid/media/MediaFocusControl;->cleanupMediaButtonReceiverForPackage(Ljava/lang/String;Z)V
    invoke-static {v2, v1, v3}, Landroid/media/MediaFocusControl;->access$2700(Landroid/media/MediaFocusControl;Ljava/lang/String;Z)V

    goto :goto_0
.end method
