.class Landroid/widget/RemoteViews$TextViewSizeAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewSizeAction"
.end annotation


# static fields
.field public static final TAG:I = 0xd


# instance fields
.field size:F

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field units:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IIF)V
    .locals 1
    .param p2, "viewId"    # I
    .param p3, "units"    # I
    .param p4, "size"    # F

    .prologue
    .line 1437
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1438
    iput p2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->viewId:I

    .line 1439
    iput p3, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->units:I

    .line 1440
    iput p4, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->size:F

    .line 1441
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1443
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->viewId:I

    .line 1445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->units:I

    .line 1446
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->size:F

    .line 1447
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1458
    iget v1, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->viewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1459
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 1461
    :goto_0
    return-void

    .line 1460
    :cond_0
    iget v1, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->units:I

    iget v2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->size:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1464
    const-string v0, "TextViewSizeAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1450
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1451
    iget v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1452
    iget v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->units:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1453
    iget v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->size:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1454
    return-void
.end method
