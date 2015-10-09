.class Landroid/widget/RemoteViewsAdapter$4;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter;->updateRemoteViews(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;

.field final synthetic val$position:I

.field final synthetic val$rv:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter;ILandroid/widget/RemoteViews;)V
    .locals 0

    .prologue
    .line 1074
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$4;->this$0:Landroid/widget/RemoteViewsAdapter;

    iput p2, p0, Landroid/widget/RemoteViewsAdapter$4;->val$position:I

    iput-object p3, p0, Landroid/widget/RemoteViewsAdapter$4;->val$rv:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1077
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$4;->this$0:Landroid/widget/RemoteViewsAdapter;

    # getter for: Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->access$1900(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViewsAdapter$4;->val$position:I

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$4;->val$rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->notifyOnRemoteViewsLoaded(ILandroid/widget/RemoteViews;)V

    .line 1078
    return-void
.end method
