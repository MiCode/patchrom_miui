.class Landroid/filterfw/core/FilterFunction$FrameHolderPort;
.super Landroid/filterfw/core/StreamPort;
.source "FilterFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/FilterFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameHolderPort"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/filterfw/core/FilterFunction;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterFunction;)V
    .locals 2

    .prologue
    .line 33
    iput-object p1, p0, Landroid/filterfw/core/FilterFunction$FrameHolderPort;->this$0:Landroid/filterfw/core/FilterFunction;

    .line 34
    const/4 v0, 0x0

    const-string v1, "holder"

    invoke-direct {p0, v0, v1}, Landroid/filterfw/core/StreamPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    .line 35
    return-void
.end method
