.class Landroid/widget/RemoteViews$ViewGroupAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewGroupAction"
.end annotation


# static fields
.field public static final TAG:I = 0x4


# instance fields
.field nestedViews:Landroid/widget/RemoteViews;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V
    .locals 1
    .param p2, "viewId"    # I
    .param p3, "nestedViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1308
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1309
    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    .line 1310
    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    .line 1311
    if-eqz p3, :cond_0

    .line 1312
    # invokes: Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V
    invoke-static {p1, p3}, Landroid/widget/RemoteViews;->access$600(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 1314
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 3
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    .prologue
    const/4 v2, 0x0

    .line 1316
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    .line 1318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1319
    .local v0, "nestedViewsNull":Z
    :goto_0
    if-nez v0, :cond_1

    .line 1320
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-direct {v1, p2, p3, v2}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$1;)V

    iput-object v1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    .line 1324
    :goto_1
    return-void

    .line 1318
    .end local v0    # "nestedViewsNull":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1322
    .restart local v0    # "nestedViewsNull":Z
    :cond_1
    iput-object v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    goto :goto_1
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1340
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1341
    .local v0, "context":Landroid/content/Context;
    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1342
    .local v1, "target":Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 1350
    :goto_0
    return-void

    .line 1343
    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_1

    .line 1345
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v0, v1, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1348
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewGroupAction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    const-string v0, "Remove"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Add"

    goto :goto_0
.end method

.method public mergeBehavior()I
    .locals 1

    .prologue
    .line 1371
    const/4 v0, 0x1

    return v0
.end method

.method public setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 1
    .param p1, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    .prologue
    .line 1361
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    # invokes: Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->access$800(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1364
    :cond_0
    return-void
.end method

.method public updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V
    .locals 1
    .param p1, "counter"    # Landroid/widget/RemoteViews$MemoryUsageCounter;

    .prologue
    .line 1354
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    .line 1357
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1327
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1328
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1329
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 1330
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1331
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1336
    :goto_0
    return-void

    .line 1334
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
