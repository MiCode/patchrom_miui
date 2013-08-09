.class Lcom/android/settings/wifi/WpsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WpsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WpsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings/wifi/WpsActivity$1;->this$0:Lcom/android/settings/wifi/WpsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$1;->this$0:Lcom/android/settings/wifi/WpsActivity;

    #calls: Lcom/android/settings/wifi/WpsActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/settings/wifi/WpsActivity;->access$100(Lcom/android/settings/wifi/WpsActivity;Landroid/content/Context;Landroid/content/Intent;)V

    .line 114
    return-void
.end method
