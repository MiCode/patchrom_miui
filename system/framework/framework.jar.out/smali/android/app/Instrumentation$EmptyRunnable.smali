.class final Landroid/app/Instrumentation$EmptyRunnable;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyRunnable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Instrumentation$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Instrumentation$1;

    .prologue
    .line 1705
    invoke-direct {p0}, Landroid/app/Instrumentation$EmptyRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 1707
    return-void
.end method
