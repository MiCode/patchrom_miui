.class abstract Landroid/view/HardwareRenderer$GraphDataProvider;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "GraphDataProvider"
.end annotation


# static fields
.field public static final GRAPH_TYPE_BARS:I = 0x0

.field public static final GRAPH_TYPE_LINES:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/view/HardwareRenderer;


# direct methods
.method constructor <init>(Landroid/view/HardwareRenderer;)V
    .locals 0

    .prologue
    .line 712
    iput-object p1, p0, Landroid/view/HardwareRenderer$GraphDataProvider;->this$0:Landroid/view/HardwareRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getCurrentFrame()I
.end method

.method abstract getData()[F
.end method

.method abstract getElementCount()I
.end method

.method abstract getFrameCount()I
.end method

.method abstract getGraphType()I
.end method

.method abstract getHorizontaUnitMargin()I
.end method

.method abstract getHorizontalUnitSize()I
.end method

.method abstract getThreshold()F
.end method

.method abstract getVerticalUnitSize()I
.end method

.method abstract prepare(Landroid/util/DisplayMetrics;)V
.end method

.method abstract setupCurrentFramePaint(Landroid/graphics/Paint;)V
.end method

.method abstract setupGraphPaint(Landroid/graphics/Paint;I)V
.end method

.method abstract setupThresholdPaint(Landroid/graphics/Paint;)V
.end method
