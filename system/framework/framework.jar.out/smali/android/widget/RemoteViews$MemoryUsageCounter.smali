.class Landroid/widget/RemoteViews$MemoryUsageCounter;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryUsageCounter"
.end annotation


# instance fields
.field mMemoryUsage:I

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method private constructor <init>(Landroid/widget/RemoteViews;)V
    .locals 0

    .prologue
    .line 1522
    iput-object p1, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/RemoteViews;
    .param p2, "x1"    # Landroid/widget/RemoteViews$1;

    .prologue
    .line 1522
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public addBitmapMemory(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1537
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 1539
    .local v1, "c":Landroid/graphics/Bitmap$Config;
    const/4 v0, 0x4

    .line 1540
    .local v0, "bpp":I
    if-eqz v1, :cond_0

    .line 1541
    sget-object v2, Landroid/widget/RemoteViews$4;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1554
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    .line 1555
    return-void

    .line 1543
    :pswitch_0
    const/4 v0, 0x1

    .line 1544
    goto :goto_0

    .line 1547
    :pswitch_1
    const/4 v0, 0x2

    .line 1548
    goto :goto_0

    .line 1550
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 1541
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1524
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->mMemoryUsage:I

    .line 1525
    return-void
.end method

.method public getMemoryUsage()I
    .locals 1

    .prologue
    .line 1532
    iget v0, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->mMemoryUsage:I

    return v0
.end method

.method public increment(I)V
    .locals 1
    .param p1, "numBytes"    # I

    .prologue
    .line 1528
    iget v0, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->mMemoryUsage:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->mMemoryUsage:I

    .line 1529
    return-void
.end method
