.class Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;
.super Ljava/lang/Object;
.source "UsageStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIMItem"
.end annotation


# instance fields
.field mItem:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;

.field mLineView:Lcom/android/settings/LineView;

.field final synthetic this$2:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;Lcom/android/settings/LineView;)V
    .locals 0
    .parameter
    .parameter "item"
    .parameter "lineView"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;->this$2:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;->mItem:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;

    .line 211
    iput-object p3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;->mLineView:Lcom/android/settings/LineView;

    .line 212
    return-void
.end method
