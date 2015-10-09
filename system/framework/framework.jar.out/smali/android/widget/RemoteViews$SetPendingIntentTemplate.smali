.class Landroid/widget/RemoteViews$SetPendingIntentTemplate;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetPendingIntentTemplate"
.end annotation


# static fields
.field public static final TAG:I = 0x8


# instance fields
.field pendingIntentTemplate:Landroid/app/PendingIntent;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .locals 1
    .param p2, "id"    # I
    .param p3, "pendingIntentTemplate"    # Landroid/app/PendingIntent;

    .prologue
    .line 440
    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 441
    iput p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->viewId:I

    .line 442
    iput-object p3, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    .line 443
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 445
    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->viewId:I

    .line 447
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    .line 448
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 458
    iget v3, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 459
    .local v2, "target":Landroid/view/View;
    if-nez v2, :cond_0

    .line 505
    :goto_0
    return-void

    .line 462
    :cond_0
    instance-of v3, v2, Landroid/widget/AdapterView;

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 463
    check-cast v0, Landroid/widget/AdapterView;

    .line 465
    .local v0, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;

    invoke-direct {v1, p0, p3}, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;-><init>(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 498
    .local v1, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 499
    iget-object v3, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 501
    .end local v0    # "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .end local v1    # "listener":Landroid/widget/AdapterView$OnItemClickListener;
    :cond_1
    const-string v3, "RemoteViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot setPendingIntentTemplate on a view which is notan AdapterView (id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->viewId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    const-string v0, "SetPendingIntentTemplate"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 451
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget-object v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 454
    return-void
.end method
