.class Lcom/android/settings/ScanAppData;
.super Ljava/lang/Object;
.source "VirusScanService.java"


# instance fields
.field public mAppName:Ljava/lang/String;

.field public mChecked:Z

.field public mFullPath:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mState:Lcom/android/settings/ScanState;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/android/settings/ScanState;->ESS_WAITING:Lcom/android/settings/ScanState;

    iput-object v0, p0, Lcom/android/settings/ScanAppData;->mState:Lcom/android/settings/ScanState;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ScanAppData;->mChecked:Z

    .line 35
    return-void
.end method
