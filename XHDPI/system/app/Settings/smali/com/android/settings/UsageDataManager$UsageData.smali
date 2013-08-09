.class public Lcom/android/settings/UsageDataManager$UsageData;
.super Ljava/lang/Object;
.source "UsageDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UsageData"
.end annotation


# instance fields
.field mKeyInf:Ljava/lang/String;

.field mPkg:Ljava/lang/String;

.field mTime:Ljava/lang/Long;

.field final synthetic this$0:Lcom/android/settings/UsageDataManager;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter "pkg"
    .parameter "keyInf"
    .parameter "time"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/settings/UsageDataManager$UsageData;->this$0:Lcom/android/settings/UsageDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/android/settings/UsageDataManager$UsageData;->mPkg:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/android/settings/UsageDataManager$UsageData;->mKeyInf:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/android/settings/UsageDataManager$UsageData;->mTime:Ljava/lang/Long;

    .line 29
    return-void
.end method
