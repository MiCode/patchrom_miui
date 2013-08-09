.class Lcom/android/settings/VirusScanAppActivity$AppData;
.super Ljava/lang/Object;
.source "VirusScanAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VirusScanAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppData"
.end annotation


# instance fields
.field public mAppName:Ljava/lang/String;

.field public mChecked:Z

.field public mState:Lcom/android/settings/ScanState;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/android/settings/ScanState;->ESS_WAITING:Lcom/android/settings/ScanState;

    iput-object v0, p0, Lcom/android/settings/VirusScanAppActivity$AppData;->mState:Lcom/android/settings/ScanState;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/VirusScanAppActivity$AppData;->mChecked:Z

    .line 45
    return-void
.end method
