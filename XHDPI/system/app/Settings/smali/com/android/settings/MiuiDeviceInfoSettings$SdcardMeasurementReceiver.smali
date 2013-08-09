.class Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;
.super Ljava/lang/Object;
.source "MiuiDeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiDeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdcardMeasurementReceiver"
.end annotation


# instance fields
.field private mInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

.field private mIsEmulated:Z

.field private mIsRemoveable:Z

.field final synthetic this$0:Lcom/android/settings/MiuiDeviceInfoSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiDeviceInfoSettings;ZZ)V
    .locals 1
    .parameter
    .parameter "isEmulated"
    .parameter "isRemoveable"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->this$0:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    new-instance v0, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    invoke-direct {v0}, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->mInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    .line 600
    iput-boolean p2, p0, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->mIsEmulated:Z

    .line 601
    iput-boolean p3, p0, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->mIsRemoveable:Z

    .line 602
    return-void
.end method


# virtual methods
.method public getSdcardInfo()Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->mInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    return-object v0
.end method

.method public isEmulated()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->mIsEmulated:Z

    return v0
.end method

.method public isRemoveable()Z
    .locals 1

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->mIsRemoveable:Z

    return v0
.end method

.method public updateApproximate(Lcom/android/settings/deviceinfo/StorageMeasurement;JJ)V
    .locals 2
    .parameter "meas"
    .parameter "totalSize"
    .parameter "availSize"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->mInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    iput-wide p2, v0, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->total:J

    .line 616
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->mInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    iput-wide p4, v0, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->free:J

    .line 617
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->this$0:Lcom/android/settings/MiuiDeviceInfoSettings;

    #getter for: Lcom/android/settings/MiuiDeviceInfoSettings;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->access$000(Lcom/android/settings/MiuiDeviceInfoSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 618
    return-void
.end method

.method public updateDetails(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0
    .parameter "meas"
    .parameter "details"

    .prologue
    .line 624
    return-void
.end method
