.class Lcom/android/settings/UsageDataManager$PkgUsageStatsExtended;
.super Ljava/lang/Object;
.source "UsageDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PkgUsageStatsExtended"
.end annotation


# instance fields
.field final mComps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/UsageDataManager;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageDataManager;Landroid/os/Parcel;)V
    .locals 5
    .parameter
    .parameter "in"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings/UsageDataManager$PkgUsageStatsExtended;->this$0:Lcom/android/settings/UsageDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/UsageDataManager$PkgUsageStatsExtended;->mComps:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 113
    .local v3, numTimeStats:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, comp:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 118
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    :cond_0
    iget-object v4, p0, Lcom/android/settings/UsageDataManager$PkgUsageStatsExtended;->mComps:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v0           #comp:Ljava/lang/String;
    .end local v2           #j:I
    :cond_1
    return-void
.end method
