.class public Landroid/app/ExtraActivityManager$PackageNameList;
.super Ljava/lang/Object;
.source "ExtraActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ExtraActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageNameList"
.end annotation


# instance fields
.field public final mOrderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mPlayingCount:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p2, "playingCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/app/ExtraActivityManager$PackageNameList;->mOrderList:Ljava/util/List;

    .line 82
    iput p2, p0, Landroid/app/ExtraActivityManager$PackageNameList;->mPlayingCount:I

    .line 83
    return-void
.end method
