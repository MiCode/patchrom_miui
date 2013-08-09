.class Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;
.super Ljava/lang/Object;
.source "UsageStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UsageInfLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;
    }
.end annotation


# instance fields
.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;",
            ">;"
        }
    .end annotation
.end field

.field mSpliders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/LineView;",
            ">;"
        }
    .end annotation
.end field

.field mUsageInfLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mSpliders:Ljava/util/ArrayList;

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mItems:Ljava/util/ArrayList;

    .line 395
    return-void
.end method
