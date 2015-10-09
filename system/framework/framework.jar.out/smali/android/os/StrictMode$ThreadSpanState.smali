.class Landroid/os/StrictMode$ThreadSpanState;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadSpanState"
.end annotation


# instance fields
.field public mActiveHead:Landroid/os/StrictMode$Span;

.field public mActiveSize:I

.field public mFreeListHead:Landroid/os/StrictMode$Span;

.field public mFreeListSize:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/StrictMode$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/StrictMode$1;

    .prologue
    .line 1827
    invoke-direct {p0}, Landroid/os/StrictMode$ThreadSpanState;-><init>()V

    return-void
.end method
