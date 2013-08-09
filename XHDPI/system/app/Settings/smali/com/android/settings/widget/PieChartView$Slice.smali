.class public Lcom/android/settings/widget/PieChartView$Slice;
.super Ljava/lang/Object;
.source "PieChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/PieChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Slice"
.end annotation


# instance fields
.field public paint:Landroid/graphics/Paint;

.field public path:Landroid/graphics/Path;

.field public pathOutline:Landroid/graphics/Path;

.field public pathSide:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/android/settings/widget/PieChartView;

.field public value:J


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/PieChartView;JI)V
    .locals 1
    .parameter
    .parameter "value"
    .parameter "color"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/widget/PieChartView$Slice;->this$0:Lcom/android/settings/widget/PieChartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView$Slice;->path:Landroid/graphics/Path;

    .line 66
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    .line 67
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    .line 72
    iput-wide p2, p0, Lcom/android/settings/widget/PieChartView$Slice;->value:J

    .line 73
    invoke-virtual {p1}, Lcom/android/settings/widget/PieChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    #calls: Lcom/android/settings/widget/PieChartView;->buildFillPaint(ILandroid/content/res/Resources;)Landroid/graphics/Paint;
    invoke-static {p4, v0}, Lcom/android/settings/widget/PieChartView;->access$000(ILandroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView$Slice;->paint:Landroid/graphics/Paint;

    .line 74
    return-void
.end method
