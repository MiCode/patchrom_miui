.class Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;
.super Ljava/lang/Object;
.source "UsageStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UsageListViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;
    }
.end annotation


# instance fields
.field mMomentShow:Lcom/android/settings/MomentView;

.field mPkgIcon:Landroid/widget/ImageView;

.field mPkgName:Landroid/widget/TextView;

.field mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    invoke-direct {v0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;-><init>()V

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    .line 390
    return-void
.end method
