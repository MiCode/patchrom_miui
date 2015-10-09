.class Landroid/view/View$AttachInfo$InvalidateInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View$AttachInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InvalidateInfo"
.end annotation


# static fields
.field private static final POOL_LIMIT:I = 0xa

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/View$AttachInfo$InvalidateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field bottom:I

.field left:I

.field right:I

.field target:Landroid/view/View;

.field top:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18725
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/View$AttachInfo$InvalidateInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Landroid/view/View$AttachInfo$InvalidateInfo;
    .locals 2

    .prologue
    .line 18736
    sget-object v1, Landroid/view/View$AttachInfo$InvalidateInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 18737
    .local v0, "instance":Landroid/view/View$AttachInfo$InvalidateInfo;
    if-eqz v0, :cond_0

    .end local v0    # "instance":Landroid/view/View$AttachInfo$InvalidateInfo;
    :goto_0
    return-object v0

    .restart local v0    # "instance":Landroid/view/View$AttachInfo$InvalidateInfo;
    :cond_0
    new-instance v0, Landroid/view/View$AttachInfo$InvalidateInfo;

    .end local v0    # "instance":Landroid/view/View$AttachInfo$InvalidateInfo;
    invoke-direct {v0}, Landroid/view/View$AttachInfo$InvalidateInfo;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .prologue
    .line 18741
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 18742
    sget-object v0, Landroid/view/View$AttachInfo$InvalidateInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 18743
    return-void
.end method
