.class Lcom/android/settings/wifi/WpsActivity$1WpsListener;
.super Ljava/lang/Object;
.source "WpsActivity.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$WpsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WpsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/wifi/WpsActivity$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsActivity;

    sget-object v1, Lcom/android/settings/wifi/WpsActivity$State;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsActivity$State;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsActivity$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsActivity;

    const v3, 0x7f0c01f9

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WpsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/wifi/WpsActivity;->updateState(Lcom/android/settings/wifi/WpsActivity$State;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WpsActivity;->access$000(Lcom/android/settings/wifi/WpsActivity;Lcom/android/settings/wifi/WpsActivity$State;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 86
    packed-switch p1, :pswitch_data_0

    .line 100
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WpsActivity$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsActivity;

    const v2, 0x7f0c01fc

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WpsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, msg:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WpsActivity$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsActivity;

    sget-object v2, Lcom/android/settings/wifi/WpsActivity$State;->WPS_FAILED:Lcom/android/settings/wifi/WpsActivity$State;

    #calls: Lcom/android/settings/wifi/WpsActivity;->updateState(Lcom/android/settings/wifi/WpsActivity$State;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/android/settings/wifi/WpsActivity;->access$000(Lcom/android/settings/wifi/WpsActivity;Lcom/android/settings/wifi/WpsActivity$State;Ljava/lang/String;)V

    .line 104
    return-void

    .line 88
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/WpsActivity$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsActivity;

    const v2, 0x7f0c0200

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WpsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_0

    .line 91
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WpsActivity$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsActivity;

    const v2, 0x7f0c01fd

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WpsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_0

    .line 94
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/WpsActivity$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsActivity;

    const v2, 0x7f0c01fe

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WpsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_0

    .line 97
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/wifi/WpsActivity$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsActivity;

    const v2, 0x7f0c01fb

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WpsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStartSuccess(Ljava/lang/String;)V
    .locals 5
    .parameter "pin"

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsActivity;

    sget-object v1, Lcom/android/settings/wifi/WpsActivity$State;->WPS_START:Lcom/android/settings/wifi/WpsActivity$State;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsActivity$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsActivity;

    const v3, 0x7f0c01f8

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WpsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/wifi/WpsActivity;->updateState(Lcom/android/settings/wifi/WpsActivity$State;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WpsActivity;->access$000(Lcom/android/settings/wifi/WpsActivity;Lcom/android/settings/wifi/WpsActivity$State;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsActivity;

    sget-object v1, Lcom/android/settings/wifi/WpsActivity$State;->WPS_START:Lcom/android/settings/wifi/WpsActivity$State;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsActivity$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsActivity;

    const v3, 0x7f0c01f7

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WpsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/wifi/WpsActivity;->updateState(Lcom/android/settings/wifi/WpsActivity$State;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WpsActivity;->access$000(Lcom/android/settings/wifi/WpsActivity;Lcom/android/settings/wifi/WpsActivity$State;Ljava/lang/String;)V

    goto :goto_0
.end method
