.class Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageDataItem;
.super Ljava/lang/Object;
.source "UsageStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsageDataItem"
.end annotation


# instance fields
.field mKeyInf:Ljava/lang/String;

.field mTime:Ljava/lang/Long;

.field final synthetic this$1:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter "inf"
    .parameter "time"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageDataItem;->this$1:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageDataItem;->mKeyInf:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageDataItem;->mTime:Ljava/lang/Long;

    .line 153
    return-void
.end method
