.class Landroid/widget/ExpandableListConnector$GroupMetadata;
.super Ljava/lang/Object;
.source "ExpandableListConnector.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/widget/ExpandableListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field static final REFRESH:I = -0x1


# instance fields
.field flPos:I

.field gId:J

.field gPos:I

.field lastChildFlPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 930
    new-instance v0, Landroid/widget/ExpandableListConnector$GroupMetadata$1;

    invoke-direct {v0}, Landroid/widget/ExpandableListConnector$GroupMetadata$1;-><init>()V

    sput-object v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    return-void
.end method

.method static obtain(IIIJ)Landroid/widget/ExpandableListConnector$GroupMetadata;
    .locals 1
    .param p0, "flPos"    # I
    .param p1, "lastChildFlPos"    # I
    .param p2, "gPos"    # I
    .param p3, "gId"    # J

    .prologue
    .line 903
    new-instance v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    invoke-direct {v0}, Landroid/widget/ExpandableListConnector$GroupMetadata;-><init>()V

    .line 904
    .local v0, "gm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iput p0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 905
    iput p1, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 906
    iput p2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 907
    iput-wide p3, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gId:J

    .line 908
    return-object v0
.end method


# virtual methods
.method public compareTo(Landroid/widget/ExpandableListConnector$GroupMetadata;)I
    .locals 2
    .param p1, "another"    # Landroid/widget/ExpandableListConnector$GroupMetadata;

    .prologue
    .line 912
    if-nez p1, :cond_0

    .line 913
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 916
    :cond_0
    iget v0, p0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    iget v1, p1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 875
    check-cast p1, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector$GroupMetadata;->compareTo(Landroid/widget/ExpandableListConnector$GroupMetadata;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 920
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 924
    iget v0, p0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    iget v0, p0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    iget v0, p0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    iget-wide v0, p0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 928
    return-void
.end method
