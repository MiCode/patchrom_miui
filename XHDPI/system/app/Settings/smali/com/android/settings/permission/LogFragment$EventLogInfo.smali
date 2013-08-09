.class Lcom/android/settings/permission/LogFragment$EventLogInfo;
.super Ljava/lang/Object;
.source "LogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/permission/LogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventLogInfo"
.end annotation


# instance fields
.field public mAppName:Ljava/lang/String;

.field public mDatePos:I

.field public mEventLog:Lcom/lbe/security/bean/EventLog;

.field public mTimeStamp:Ljava/lang/String;

.field public mType:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
