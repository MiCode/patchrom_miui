.class Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;
.super Ljava/lang/Object;
.source "UsageStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsageMergedData"
.end annotation


# instance fields
.field mDataItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageDataItem;",
            ">;"
        }
    .end annotation
.end field

.field mPkg:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;->this$1:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;->mDataItems:Ljava/util/ArrayList;

    return-void
.end method
