.class Landroid/widget/RemoteViews$2;
.super Landroid/content/ContextWrapper;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViews;

.field final synthetic val$contextForResources:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 2412
    iput-object p1, p0, Landroid/widget/RemoteViews$2;->this$0:Landroid/widget/RemoteViews;

    iput-object p3, p0, Landroid/widget/RemoteViews$2;->val$contextForResources:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 2415
    iget-object v0, p0, Landroid/widget/RemoteViews$2;->val$contextForResources:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 2420
    iget-object v0, p0, Landroid/widget/RemoteViews$2;->val$contextForResources:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method
