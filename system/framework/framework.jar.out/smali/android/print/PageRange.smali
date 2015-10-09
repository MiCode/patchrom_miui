.class public final Landroid/print/PageRange;
.super Ljava/lang/Object;
.source "PageRange.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALL_PAGES:Landroid/print/PageRange;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PageRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEnd:I

.field private final mStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/print/PageRange;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Landroid/print/PageRange;-><init>(II)V

    sput-object v0, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    .line 136
    new-instance v0, Landroid/print/PageRange$1;

    invoke-direct {v0}, Landroid/print/PageRange$1;-><init>()V

    sput-object v0, Landroid/print/PageRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-gez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start cannot be less than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    if-gez p2, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end cannot be less than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    if-le p1, p2, :cond_2

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start must be lesser than end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    iput p1, p0, Landroid/print/PageRange;->mStart:I

    .line 56
    iput p2, p0, Landroid/print/PageRange;->mEnd:I

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/print/PageRange;-><init>(II)V

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PageRange$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/print/PageRange$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/print/PageRange;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    if-ne p0, p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v1

    .line 106
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 107
    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 110
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 112
    check-cast v0, Landroid/print/PageRange;

    .line 113
    .local v0, "other":Landroid/print/PageRange;
    iget v3, p0, Landroid/print/PageRange;->mEnd:I

    iget v4, v0, Landroid/print/PageRange;->mEnd:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 114
    goto :goto_0

    .line 116
    :cond_4
    iget v3, p0, Landroid/print/PageRange;->mStart:I

    iget v4, v0, Landroid/print/PageRange;->mStart:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 117
    goto :goto_0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Landroid/print/PageRange;->mStart:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 94
    const/16 v0, 0x1f

    .line 95
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 96
    .local v1, "result":I
    iget v2, p0, Landroid/print/PageRange;->mEnd:I

    add-int/lit8 v1, v2, 0x1f

    .line 97
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PageRange;->mStart:I

    add-int v1, v2, v3

    .line 98
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    iget v1, p0, Landroid/print/PageRange;->mStart:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/print/PageRange;->mEnd:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 125
    const-string v1, "PageRange[<all pages>]"

    .line 133
    :goto_0
    return-object v1

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PageRange["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PageRange;->mStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PageRange;->mEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 88
    iget v0, p0, Landroid/print/PageRange;->mStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return-void
.end method
