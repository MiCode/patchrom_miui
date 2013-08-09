.class Lcom/android/settings/MiuiDeviceInfoSettings$3;
.super Landroid/os/Handler;
.source "MiuiDeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiDeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiDeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiDeviceInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/settings/MiuiDeviceInfoSettings$3;->this$0:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const-wide/16 v3, 0x0

    .line 631
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 650
    :goto_0
    return-void

    .line 633
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings$3;->this$0:Lcom/android/settings/MiuiDeviceInfoSettings;

    #getter for: Lcom/android/settings/MiuiDeviceInfoSettings;->mSDCardInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    invoke-static {v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->access$100(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    move-result-object v2

    iput-wide v3, v2, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->free:J

    .line 634
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings$3;->this$0:Lcom/android/settings/MiuiDeviceInfoSettings;

    #getter for: Lcom/android/settings/MiuiDeviceInfoSettings;->mSDCardInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    invoke-static {v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->access$100(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    move-result-object v2

    iput-wide v3, v2, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->total:J

    .line 635
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings$3;->this$0:Lcom/android/settings/MiuiDeviceInfoSettings;

    #getter for: Lcom/android/settings/MiuiDeviceInfoSettings;->mEmulatedInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    invoke-static {v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->access$200(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    move-result-object v2

    iput-wide v3, v2, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->free:J

    .line 636
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings$3;->this$0:Lcom/android/settings/MiuiDeviceInfoSettings;

    #getter for: Lcom/android/settings/MiuiDeviceInfoSettings;->mEmulatedInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    invoke-static {v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->access$200(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    move-result-object v2

    iput-wide v3, v2, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->total:J

    .line 637
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings$3;->this$0:Lcom/android/settings/MiuiDeviceInfoSettings;

    #getter for: Lcom/android/settings/MiuiDeviceInfoSettings;->receiverList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->access$300(Lcom/android/settings/MiuiDeviceInfoSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;

    .line 638
    .local v1, receiver:Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;
    invoke-virtual {v1}, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->isRemoveable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 639
    :cond_0
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings$3;->this$0:Lcom/android/settings/MiuiDeviceInfoSettings;

    #getter for: Lcom/android/settings/MiuiDeviceInfoSettings;->mEmulatedInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    invoke-static {v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->access$200(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    move-result-object v2

    iget-wide v3, v2, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->total:J

    invoke-virtual {v1}, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->getSdcardInfo()Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->total:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->total:J

    .line 640
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings$3;->this$0:Lcom/android/settings/MiuiDeviceInfoSettings;

    #getter for: Lcom/android/settings/MiuiDeviceInfoSettings;->mEmulatedInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    invoke-static {v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->access$200(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    move-result-object v2

    iget-wide v3, v2, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->free:J

    invoke-virtual {v1}, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->getSdcardInfo()Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->free:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->free:J

    goto :goto_1

    .line 642
    :cond_1
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings$3;->this$0:Lcom/android/settings/MiuiDeviceInfoSettings;

    #getter for: Lcom/android/settings/MiuiDeviceInfoSettings;->mSDCardInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    invoke-static {v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->access$100(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    move-result-object v2

    iget-wide v3, v2, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->total:J

    invoke-virtual {v1}, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->getSdcardInfo()Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->total:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->total:J

    .line 643
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings$3;->this$0:Lcom/android/settings/MiuiDeviceInfoSettings;

    #getter for: Lcom/android/settings/MiuiDeviceInfoSettings;->mSDCardInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    invoke-static {v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->access$100(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    move-result-object v2

    iget-wide v3, v2, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->free:J

    invoke-virtual {v1}, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->getSdcardInfo()Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->free:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->free:J

    goto :goto_1

    .line 646
    .end local v1           #receiver:Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings$3;->this$0:Lcom/android/settings/MiuiDeviceInfoSettings;

    #calls: Lcom/android/settings/MiuiDeviceInfoSettings;->fillOverview()V
    invoke-static {v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->access$400(Lcom/android/settings/MiuiDeviceInfoSettings;)V

    goto/16 :goto_0

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
